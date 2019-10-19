class SeedController < ApplicationController

  def index
    recipes = Recipe.all
    render json: RecipeSerializer.new(recipes)
  end

end
