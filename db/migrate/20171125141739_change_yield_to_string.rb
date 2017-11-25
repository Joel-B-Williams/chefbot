class ChangeYieldToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :recipes, :yield, :string
  end
end
