require "rails_helper"

RSpec.describe "recipe_index", type: :feature do

  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
    @user_1 = User.create(name: "Bob", password: "bobrulez")
  end

  it "user can login" do
    visit recipes_path
    click_button 'Sign In'
    expect(current_path).to eq(login_path)

    fill_in :name, with: "Bob"
    fill_in :password, with: "bobrulez"
    click_button 'Login'
    click_button 'Home'

    expect(current_path).to eq(user_path(@user_1))
  end

  it "user can add favorite" do
    visit recipes_path
    click_button 'Sign In'
    fill_in :name, with: "Bob"
    fill_in :password, with: "bobrulez"
    click_button 'Login'
    visit recipe_path(@recipe_2)
    click_button 'Add to Favorites'
    visit user_path(@user_1)

    expect(page).to have_content("muffins")
  end



end
