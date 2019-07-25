class SessionController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:name])
     if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to root_path
     else
       flash[:warning] = "Invalid entry"
       render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
