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

ActiveRecord::Schema.define(version: 2021_12_14_202103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.datetime "delivery_time"
    t.float "departure_place_lat"
    t.float "departure_place_lon"
    t.float "destination_place_lat"
    t.float "destination_place_lon"
    t.float "payload_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_routes_on_order_id"
  end

  create_table "stretches", force: :cascade do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.float "start_place_lat"
    t.float "start_place_lon"
    t.float "end_place_lat"
    t.float "end_place_lon"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "truck_id"
    t.index ["route_id"], name: "index_stretches_on_route_id"
    t.index ["truck_id"], name: "index_stretches_on_truck_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.float "height"
    t.float "capacity"
    t.float "position_lat"
    t.float "position_lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "login"
    t.string "name"
    t.string "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "routes", "orders"
  add_foreign_key "stretches", "routes"
  add_foreign_key "stretches", "trucks"
end
