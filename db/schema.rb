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

ActiveRecord::Schema.define(version: 20170723163239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "clues_count", default: 0
  end

  create_table "clues", force: :cascade do |t|
    t.string   "answer"
    t.text     "question"
    t.integer  "value"
    t.datetime "airdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "game_id"
    t.integer  "invalid_count"
  end

  create_table "games", force: :cascade do |t|
    t.integer  "player_id",                   null: false
    t.integer  "correct_answers", default: 0
    t.integer  "final_score"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "indices", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jservice_tables", force: :cascade do |t|
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "username",            limit: 32,                   null: false
    t.integer  "highest_score",                  default: 0
    t.integer  "number_games_played",            default: 0
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "favorite_thing",                 default: "stuff"
  end

end
