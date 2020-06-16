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

ActiveRecord::Schema.define(version: 2020_06_03_222530) do

  create_table "bets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "fight_id", null: false
    t.decimal "amount"
    t.string "fighter"
    t.string "odds"
    t.string "bet_type"
    t.boolean "correct_bet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fight_id"], name: "index_bets_on_fight_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fights", force: :cascade do |t|
    t.integer "event_id", null: false
    t.string "competitor_one"
    t.string "competitor_two"
    t.integer "rounds"
    t.string "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_fights_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bets", "fights"
  add_foreign_key "bets", "users"
  add_foreign_key "fights", "events"
end
