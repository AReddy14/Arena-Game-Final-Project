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

ActiveRecord::Schema.define(version: 20141217145210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string  "name"
    t.string  "type"
    t.string  "job"
    t.integer "level"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "health"
    t.integer "mana"
    t.integer "user_id"
  end

  create_table "enemies", force: true do |t|
    t.string  "name"
    t.string  "type"
    t.integer "level"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "health"
    t.integer "mana"
  end

  create_table "games", force: true do |t|
    t.integer "current_health_character"
    t.integer "current_health_enemy"
    t.integer "current_mana_character"
    t.integer "current_mana_enemy"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "password"
  end

end
