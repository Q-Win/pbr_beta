class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    if category.save
      redirect_to categories_path
    else
      redirect_to "/categories/new"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
