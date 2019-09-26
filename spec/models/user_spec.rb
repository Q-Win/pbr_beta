require 'rails_helper'

describe User, type: :model do



  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
    @user_1 = User.create(name: "Bob", password: "bobrulez")
    @favorite = Favorite.create(user_id: @user_1.id, recipe_id: @recipe_2.id)
  end

  it 'gets users favorites' do

      expect(@user_1.favorites.first.recipe_id).to eq(@recipe_2.id)
  end

end
