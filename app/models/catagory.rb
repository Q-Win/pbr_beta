class Catagory < ApplicationRecord

  validates_presence_of :name

  has_many :recipe_catagories
  has_many :recipes, through: :recipe_catagories

end
