class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :Ingredients
      t.string :Directions
      t.string :gif
      t.string :video
      t.string :link
    end
  end
end
