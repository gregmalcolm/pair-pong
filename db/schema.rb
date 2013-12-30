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

ActiveRecord::Schema.define(version: 20131228055813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.text     "kata_details"
    t.integer  "github_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exercises", ["github_id"], name: "index_exercises_on_github_id", using: :btree

  create_table "invitations", force: true do |t|
    t.string   "github_repository"
    t.text     "invite_message"
    t.integer  "user_id"
    t.string   "recipient"
    t.integer  "exercise_id"
    t.string   "confirm_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitations", ["exercise_id"], name: "index_invitations_on_exercise_id", using: :btree
  add_index "invitations", ["user_id"], name: "index_invitations_on_user_id", using: :btree

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
