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

ActiveRecord::Schema.define(version: 2021_10_31_062809) do

  create_table "champion_class_joiners", force: :cascade do |t|
    t.integer "champion_id", null: false
    t.integer "champion_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["champion_class_id"], name: "index_champion_class_joiners_on_champion_class_id"
    t.index ["champion_id"], name: "index_champion_class_joiners_on_champion_id"
  end

  create_table "champion_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "image"
    t.integer "partype_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partype_id"], name: "index_champions_on_partype_id"
  end

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.integer "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_classes_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "partypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "champion_class_joiners", "champion_classes"
  add_foreign_key "champion_class_joiners", "champions"
  add_foreign_key "champions", "partypes"
  add_foreign_key "character_classes", "characters"
end
