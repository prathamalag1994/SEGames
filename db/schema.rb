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

ActiveRecord::Schema.define(version: 20140909015644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.text     "activity"
    t.text     "desc"
    t.integer  "empid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points"
    t.text     "account"
    t.integer  "offerno"
  end

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "allacts", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", force: true do |t|
    t.text     "title"
    t.text     "desc"
    t.integer  "offerid"
    t.string   "bu"
    t.integer  "points"
    t.boolean  "active"
    t.string   "activity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "password"
  end

  create_table "ses", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "empid"
    t.integer  "managerempid"
    t.string   "bu"
    t.string   "country"
    t.integer  "orank"
    t.integer  "crank"
    t.integer  "burank"
    t.integer  "points"
    t.integer  "grank"
    t.string   "name"
    t.string   "geo"
    t.string   "admin"
  end

  add_index "ses", ["confirmation_token"], name: "index_ses_on_confirmation_token", unique: true, using: :btree
  add_index "ses", ["email"], name: "index_ses_on_email", unique: true, using: :btree
  add_index "ses", ["reset_password_token"], name: "index_ses_on_reset_password_token", unique: true, using: :btree

end
