class AddFkToIngredient < ActiveRecord::Migration[5.0]
  def change
  	add_column :ingredients, :recipe_id, :integer
  	add_foreign_key :ingredients, :recipes
  end
end
