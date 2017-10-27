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

ActiveRecord::Schema.define(version: 20171027174110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "alcoholic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.boolean "vegan"
    t.integer "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refridgerators", force: :cascade do |t|
    t.string "location"
    t.string "brand"
    t.integer "size"
    t.bigint "drink_id"
    t.bigint "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_id"], name: "index_refridgerators_on_drink_id"
    t.index ["food_id"], name: "index_refridgerators_on_food_id"
  end

  add_foreign_key "refridgerators", "drinks"
  add_foreign_key "refridgerators", "foods"
end
