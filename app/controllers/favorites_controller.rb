class FavoritesController < ApplicationController

  def new

  end


  def create

    favorite = Favorite.new(recipe_id: params[:recipe_id].to_i, user_id: current_user.id)
    # Also need to add uniqueness to Favorites.  Also reconsider redirects.
    if favorite.save
      redirect_to "/recipes"
    else
      redirect_to "/recipes/#{favorite_params[:recipe_id]}"
      flash[:warning] = "Invalid entry"
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end

end
