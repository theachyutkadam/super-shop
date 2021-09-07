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

ActiveRecord::Schema.define(version: 20210813080943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "cart_id"
    t.float "total"
    t.integer "payment_type"
    t.float "recieve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_bills_on_cart_id"
    t.index ["customer_id"], name: "index_bills_on_customer_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "customer_id"
    t.float "price"
    t.float "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_carts_on_customer_id"
    t.index ["product_id"], name: "index_carts_on_product_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "contact"
    t.date "birthdate"
    t.string "gender"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_delete", default: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "measure"
    t.float "rate"
    t.integer "code"
    t.integer "category"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "quntity"
    t.float "remain_quntiry"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_hash"
    t.string "password_salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bills", "carts"
  add_foreign_key "bills", "customers"
  add_foreign_key "carts", "customers"
  add_foreign_key "carts", "products"
end
