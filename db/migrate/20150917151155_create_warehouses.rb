class CreateWarehouses < ActiveRecord::Migration
  def self.up
    create_table :warehouses do |t|
      t.string :product_name
      t.integer :stock
      t.integer :quantity_ordered
      
      
      #t.timestamps null: false
    end
  end
  
   def self.down
    drop_table :warehouses
  end
end
