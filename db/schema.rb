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

ActiveRecord::Schema.define(version: 20160611200548) do

  create_table "opening_closings", force: :cascade do |t|
    t.string   "mo_opening"
    t.string   "mo_closing"
    t.string   "tu_opening"
    t.string   "tu_closing"
    t.string   "we_opening"
    t.string   "we_closing"
    t.string   "th_opening"
    t.string   "th_closing"
    t.string   "fr_opening"
    t.string   "fr_closing"
    t.string   "sa_opening"
    t.string   "sa_closing"
    t.string   "su_opening"
    t.string   "su_closing"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "restaurant_id"
    t.index ["restaurant_id"], name: "index_opening_closings_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "pyszne_address"
    t.string   "picture_address"
    t.string   "meal_type"
    t.string   "city"
    t.string   "street"
    t.string   "zip_code"
    t.string   "website"
    t.string   "category"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "second_name"
    t.string   "sex"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
