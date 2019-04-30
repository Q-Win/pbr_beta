require "rails_helper"

RSpec.describe "recipe_index", type: :feature do

  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
  end

  it "user visits recipe show page" do

    visit "/recipes/#{@recipe_2.id}"

    expect(page).to have_content(@recipe_2.name)
    expect(page).to have_content(@recipe_2.directions)
    expect(page).to have_content("flour")
    expect(page).to have_content("sugar")
    expect(page).to have_content("is this here")

  end
end
