require "rails_helper"

RSpec.describe "recipe_index", type: :feature do

  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
    @user_1 = User.create(name: "Bob", password: "bobrulez")
    @favorite = Favorite.create(user_id: @user_1.id, recipe_id: @recipe_2.id)
  end

  it "user can remove a favorite" do
    visit recipes_path
    click_button 'Sign In'
    expect(current_path).to eq(login_path)

    fill_in :name, with: "Bob"
    fill_in :password, with: "bobrulez"
    click_button 'Login'
    click_button 'Home'


    expect(current_path).to eq(user_path(@user_1))
    expect(page).to have_content("muffins")
    expect(page).to have_button("Remove Favorite")

    click_button 'Remove Favorite'

    expect(page).to have_no_content('muffins')
  end



end
