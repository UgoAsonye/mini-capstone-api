class AddInventory < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory, :decimal, precision: 9, scale: 2
  end
end
