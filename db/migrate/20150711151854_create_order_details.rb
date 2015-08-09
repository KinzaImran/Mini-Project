class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :price
      t.float :quantity
      t.float :discount

      t.timestamps null: false
    end
  end
end
