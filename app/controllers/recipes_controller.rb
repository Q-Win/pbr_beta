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
      @categories = Category.all.pluck(:name)
      @current_categories = @recipe.categories
    else
      redirect_to "/recipes"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      redirect_to "/recipes/#{@recipe.id}/edit"
    else
      render :new
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
    @categories = @recipe.categories
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
    params.require(:recipe).permit(:name, :ingredients, :directions, :notes, :gif, :video, :link)
  end

end
