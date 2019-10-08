require "rails_helper"

RSpec.describe "recipe_index", type: :feature do
  it "user_can_see_all_recipess" do
      recipe_1 = Recipe.create(name: "Cookies", ingredients: "flour, sugar", directions: "mix well" )
      recipe_2 = Recipe.create(name: "stew", ingredients: "water, carrots", directions: "simmer" )

    visit "/recipes"

    expect(page).to have_content(recipe_1.name)
    expect(page).to have_content(recipe_2.name)

  end

  it "user_can_favorite a recipe" do
      recipe_1 = Recipe.create(name: "Cookies", ingredients: "flour, sugar", directions: "mix well" )
      recipe_2 = Recipe.create(name: "stew", ingredients: "water, carrots", directions: "simmer" )

    visit "/recipes/#{recipe_2.id}"

    expect(page).to have_content("Add to Favorites")


  end
end
