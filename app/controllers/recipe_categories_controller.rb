class RecipeCategoriesController < ApplicationController

  def new

  end

  def create
    recipe_id = params[:recipe_id].to_i
    category_id = Category.find_by(name: params[:category_name]).id
    if RecipeCategory.where(recipe_id: recipe_id).find_by(category_id: category_id) == nil
      RecipeCategory.create(recipe_id: recipe_id, category_id: category_id)
      redirect_to "/recipes/#{recipe_id}/edit"
    end
  end

end
