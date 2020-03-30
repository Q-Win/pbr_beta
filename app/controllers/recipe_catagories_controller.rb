class RecipeCatagoriesController < ApplicationController

  def new

  end

  def create
    recipe_id = params[:recipe_id].to_i

    binding.pry
  end

end
