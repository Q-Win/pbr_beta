class Recipe < ApplicationRecord

  validates_presence_of :name, :ingredients, :directions
  validates :name, uniqueness: true

  has_many :favorites

  def ingredients_list
    ingredients.split(",")
  end

  def favorite?(user)
    true
  end

end
