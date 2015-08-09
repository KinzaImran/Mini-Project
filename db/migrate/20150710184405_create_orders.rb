class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true
      t.date :order_date
      t.date :required_date

      t.timestamps null: false
    end
    add_foreign_key :orders, :customers
  end
end
