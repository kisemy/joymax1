# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_04_19_200318) do

  create_table "account_charts", force: :cascade do |t|
    t.text "account_name"
    t.text "type"
    t.text "category"
    t.text "class"
    t.decimal "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "custoner_name"
    t.text "contactno"
    t.text "contact_name"
    t.text "address"
    t.text "city"
    t.date "date"
    t.text "sale_person_code"
    t.text "sale_person_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_lines", force: :cascade do |t|
    t.text "charge_type"
    t.text "item_no"
    t.text "description"
    t.decimal "quantity"
    t.text "unit_of_measure"
    t.decimal "unit_price"
    t.text "amount"
    t.integer "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoice_lines_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.text "customer_no"
    t.text "custoner_name"
    t.text "contactno"
    t.text "contact_name"
    t.text "address"
    t.text "city"
    t.date "date"
    t.text "sale_person_code"
    t.text "sale_person_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invoice_lines", "invoices"
end
