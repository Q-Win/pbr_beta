class UsersController < ApplicationController

  def show
    if current_user.id != params[:id].to_i
    redirect_to root_path
    end
    @user = current_user
    @favorites = @user.get_favorites
  end

end
