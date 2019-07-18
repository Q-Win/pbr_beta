class SessionController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:name])
     if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to root_path
    end
  end

end
