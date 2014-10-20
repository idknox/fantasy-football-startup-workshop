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

ActiveRecord::Schema.define(version: 20141020212936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fantasy_teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "games", force: true do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injuries", force: true do |t|
    t.integer  "player_id"
    t.integer  "week_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "injuries", ["player_id"], name: "index_injuries_on_player_id", using: :btree
  add_index "injuries", ["week_id"], name: "index_injuries_on_week_id", using: :btree

  create_table "nfl_teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.integer  "nfl_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fantasy_team_id"
  end

  add_index "players", ["nfl_team_id"], name: "index_players_on_nfl_team_id", using: :btree

  create_table "stats", force: true do |t|
    t.integer  "player_id"
    t.integer  "week_id"
    t.integer  "yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stats", ["player_id"], name: "index_stats_on_player_id", using: :btree
  add_index "stats", ["week_id"], name: "index_stats_on_week_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
