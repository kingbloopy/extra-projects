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

ActiveRecord::Schema.define(version: 2022_02_06_195832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flowers", force: :cascade do |t|
    t.string "flower_type"
    t.integer "gardener_id"
    t.string "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_flowers_on_garden_id"
    t.index ["gardener_id"], name: "index_flowers_on_gardener_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.integer "garden_owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_owner_id"], name: "index_gardens_on_garden_owner_id"
    t.index ["name", "garden_owner_id"], name: "index_gardens_on_name_and_garden_owner_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
