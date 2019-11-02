require 'pry'
require 'rails_helper'


describe "recipe_params API" do
  it "sends a list of merchants" do
    recipe_1 = Recipe.create(name: "Cookies", ingredients: "flour, sugar", directions: "mix well" )
    recipe_2 = Recipe.create(name: "stew", ingredients: "water, carrots", directions: "simmer" )
    recipe_3 = Recipe.create(name: "cake", ingredients: "water, carrots", directions: "simmer" )

    get '/api/v1/recipes'

    expect(response).to be_successful

    recipes = JSON.parse(response.body)
    
   expect(recipes.count).to eq(3)
  end
end
