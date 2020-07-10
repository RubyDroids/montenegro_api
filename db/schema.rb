# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_10_010715) do

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "zipcode"
    t.string "iso_code"
    t.text "geo"
    t.string "latitude"
    t.string "longitude"
    t.string "min_latitude"
    t.string "min_longitude"
    t.string "max_latitude"
    t.string "max_longitude"
    t.string "country_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "subdivisions", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.string "postcode"
    t.text "boundingbox"
    t.string "lat"
    t.string "lon"
    t.string "reference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "state_id"
    t.index ["state_id"], name: "index_subdivisions_on_state_id"
  end

end
