class Recipe < ApplicationRecord

  validates_presence_of :name, :ingredients, :directions
  validates :name, uniqueness: true

  def ingredients_list
    ingredients.split(",")
  end

end
