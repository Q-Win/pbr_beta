require "rails_helper"

RSpec.describe "recipe_index", type: :feature do

  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
    @user_1 = User.create(name: "Bob", password: "bobrulez")
  end

  it "user can login" do

    visit "/login"

    expect(page).to have_content("Name")
    expect(page).to have_content("Password")

    fill_in :name, with: "Bob"
    fill_in :password, with: "bobrulez"
    click_button 'Login'
    expect(current_path).to eq(root_path)

  end
end
