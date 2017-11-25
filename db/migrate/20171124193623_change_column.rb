class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	change_column :ingredients, :amount, 'integer USING CAST(amount AS integer)'
  end
end
