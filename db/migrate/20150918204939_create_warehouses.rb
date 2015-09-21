class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :stock
      t.string :product_name

      t.timestamps null: false
    end
  end
end
