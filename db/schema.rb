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

ActiveRecord::Schema.define(version: 20150305141836) do

  create_table "authors", force: :cascade do |t|
    t.string   "author_name", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "author",      limit: 255
    t.string   "category",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "author_id",   limit: 4
    t.integer  "category_id", limit: 4
  end

  create_table "blogs_categories", id: false, force: :cascade do |t|
    t.integer "drug_id",     limit: 4
    t.integer "category_id", limit: 4
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.datetime "order_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

end
