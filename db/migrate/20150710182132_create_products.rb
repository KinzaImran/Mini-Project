class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :supplier, index: true
      t.references :category, index: true
      t.integer :price

      t.timestamps null: false
    end
    add_foreign_key :products, :suppliers
    add_foreign_key :products, :categories
  end
end
