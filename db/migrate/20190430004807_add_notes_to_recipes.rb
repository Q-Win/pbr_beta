class AddNotesToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :notes, :string
  end
end
