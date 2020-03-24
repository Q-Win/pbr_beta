class CreateRecipeCatagories < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_catagories do |t|
      t.references :recipe, foreign_key: true
      t.references :catagory, foreign_key: true
    end
  end
end
