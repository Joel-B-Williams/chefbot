class ChangeAmountToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :ingredients, :amount, :string
  end
end
