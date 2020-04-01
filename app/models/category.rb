class Category < ApplicationRecord

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :recipe_categories
  has_many :recipes, through: :recipe_categories

end
