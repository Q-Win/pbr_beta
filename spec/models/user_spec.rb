require 'rails_helper'

describe User, type: :model do


  describe 'Relationships' do
     it { should have_many(:recipes).through(:favorites)}
   end


end
