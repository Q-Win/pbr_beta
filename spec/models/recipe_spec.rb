require 'rails_helper'

describe Recipe, type: :model do

  describe 'Validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:ingredients)}
    it { should validate_presence_of(:directions)}
  end

  before(:each) do
    @recipe_1 = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
    @recipe_2 = Recipe.create(name: "muffins", ingredients: "flour, sugar", directions: "mix", notes: "is this here")
  end

  it 'make an array of the ingredients' do

      expect(@recipe_2.ingredients_list).to be_a(Array)
  end

  it 'can tell if a user has set a recipe to their favorites' do


    expect(@recipe_2.favorite?(@user_1)).to eq(true)
  end

end
