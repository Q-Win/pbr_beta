class FavoritesController < ApplicationController

  def new

  end


  def create
    favorite = Favorite.new(favorite_params)

    if favorite.save
      redirect_to "/recipes"
    else
      redirect_to "/recipes/#{favorite_params[:recipe_id]}"
      flash[:warning] = "Invalid entry"
    end
  end

  private

  def favorite_params
    params.require(:recipe).permit(:user_id, :recipe_id)
  end

end
