class Recipe < ApplicationRecord

  validates_presence_of :name, :ingredients, :directions
  validates :name, uniqueness: true

  has_many :favorites

  def ingredients_list
    ingredients.split(",")
  end

  def favorite?(user_id)
    user_ids = favorites.pluck(:user_id)

    user_ids.include?(user_id)
  end

end
