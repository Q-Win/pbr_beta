class RecipeCatagoriesController < ApplicationController

  def new

  end

  def create
    recipe_id = params[:recipe_id].to_i
    catagory_id = Catagory.find_by(name: params[:catagory_name]).id
    if RecipeCatagory.where(recipe_id: recipe_id).find_by(catagory_id: catagory_id) == nil
      RecipeCatagory.create(recipe_id: recipe_id, catagory_id: catagory_id)
    end
  end

end
