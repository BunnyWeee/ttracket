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

ActiveRecord::Schema.define(version: 2020_01_07_072424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rackets", force: :cascade do |t|
    t.string "brand"
    t.string "product"
    t.integer "code", default: 0
    t.integer "type", default: 0
    t.integer "material", default: 0
    t.integer "weight"
    t.string "size"
    t.integer "thickness", default: 0
    t.string "forehand"
    t.string "backhand"
    t.integer "total_weight"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
