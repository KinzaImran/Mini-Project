# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150918204939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "name"
    t.string   "company_name"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "price"
    t.float    "quantity"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "order_date"
    t.date     "required_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "supplier_id"
    t.integer  "category_id"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.integer  "s_id"
    t.string   "name"
    t.string   "company_name"
    t.string   "region"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.integer  "stock"
    t.string   "product_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "orders", "customers"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "suppliers"
end
