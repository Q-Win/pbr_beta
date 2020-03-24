require 'rails_helper'

describe Catagory, type: :model do

  describe 'Validations' do
    it { should validate_presence_of(:name)}

  end

  describe 'Relationships' do
    it { should have_many(:recipe_catagories) }
    it { should have_many(:recipes).through(:recipe_catagories)}
   end


end
