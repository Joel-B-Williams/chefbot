class AddYieldToRecipe < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipes, :yield, :integer
  end
end
