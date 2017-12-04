class ChangeCoffeeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :coffee_id, :product_id
  end
end
