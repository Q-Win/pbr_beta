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

  end



end
