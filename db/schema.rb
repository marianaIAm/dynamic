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

ActiveRecord::Schema.define(version: 20130926020157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree

  create_table "clients", force: true do |t|
    t.integer  "account_id"
    t.integer  "trainer_id"
    t.string   "name_first"
    t.string   "name_last"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "exercises", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.integer  "client_id",  null: false
    t.integer  "workout_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["client_id"], name: "index_programs_on_client_id", using: :btree
  add_index "programs", ["workout_id"], name: "index_programs_on_workout_id", using: :btree

  create_table "routines", force: true do |t|
    t.integer  "exercise_id", null: false
    t.integer  "workout_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routines", ["exercise_id"], name: "index_routines_on_exercise_id", using: :btree
  add_index "routines", ["workout_id"], name: "index_routines_on_workout_id", using: :btree

  create_table "trainers", force: true do |t|
    t.integer  "account_id"
    t.string   "name_first"
    t.string   "name_last"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "certification"
    t.date     "certification_expiration"
  end

  create_table "workouts", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "trainer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
