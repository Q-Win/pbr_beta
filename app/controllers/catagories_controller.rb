class CatagoriesController < ApplicationController

  def index

  end

  def new
    @catagory = Catagory.new
  end

  def create
    catagory = Catagory.new(catagory_params)
    if catagory.save
      redirect_to catagories_path
    else
      redirect_to "/catagories/new"
    end
  end

  private

  def catagory_params
    params.require(:catagory).permit(:name)
  end

end
