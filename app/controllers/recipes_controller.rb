class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    if current_admin?
      @recipe = Recipe.new
    else
      redirect_to "/recipes"
    end
  end

  def edit
    if current_admin?
      @recipe = Recipe.find(params[:id])
    else
      redirect_to "/recipes"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      redirect_to "/recipes"
    else
      redirect_to "/recipes/new"
      flash[:warning] = "Invalid entry"
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :directions, :gif, :video, :link)
  end

end
