class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :s_id
      t.string :name
      t.string :company_name
      t.string :region

      t.timestamps null: false
    end
  end
end
