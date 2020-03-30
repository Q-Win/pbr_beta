class RecipeCatagoriesController < ApplicationController

  def new

  end

  def create
    recipe_id = params[:recipe_id].to_i
    catagory_id = Catagory.find_by(name: params[:catagory_name]).id

    binding.pry
  end

end
