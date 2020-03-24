class Recipe < ApplicationRecord

  validates_presence_of :name, :ingredients, :directions
  validates :name, uniqueness: true

  has_many :favorites
  has_many :recipe_catagories
  has_many :catagories, through: :recipe_catagories

  def ingredients_list
    ingredients.split(",")
  end

  def favorite?(user_id)
    user_ids = favorites.pluck(:user_id)

    user_ids.include?(user_id)
  end

end
