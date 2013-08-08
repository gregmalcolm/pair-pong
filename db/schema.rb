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

ActiveRecord::Schema.define(version: 20130808163120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "exercise_team_members", force: true do |t|
    t.integer "exercise_id"
    t.integer "user_id"
  end

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.string   "kata_link"
    t.string   "language"
    t.string   "repo"
    t.integer  "instigator_id"
    t.integer  "turn_id"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turn_names", force: true do |t|
    t.string   "name"
    t.string   "description", limit: 4000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "turn_names", ["name"], name: "index_turn_names_on_name", using: :btree

  create_table "turns", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "turn_name_id"
    t.string   "comment",      limit: 1000
    t.string   "ending_sha",   limit: 40
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "turns", ["completed_at"], name: "index_turns_on_completed_at", using: :btree
  add_index "turns", ["exercise_id"], name: "index_turns_on_exercise_id", using: :btree
  add_index "turns", ["turn_name_id"], name: "index_turns_on_turn_name_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.boolean  "active",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["active"], name: "index_users_on_active", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
