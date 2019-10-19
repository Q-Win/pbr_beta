class SeedController < ApplicationController

  def index
    recicpes = Recipe.all
    render json: RecipeSerializer.new(recipes)
  end

end
