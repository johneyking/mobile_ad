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

ActiveRecord::Schema.define(version: 20150805085531) do

  create_table "advertisers", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "advertisers", ["email"], name: "index_advertisers_on_email", unique: true, using: :btree
  add_index "advertisers", ["reset_password_token"], name: "index_advertisers_on_reset_password_token", unique: true, using: :btree

  create_table "advertises", force: :cascade do |t|
    t.integer  "advertise_id",    limit: 4
    t.integer  "advertiser_id",   limit: 4
    t.string   "title",           limit: 255
    t.text     "content",         limit: 65535
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.string   "location",        limit: 255
    t.integer  "max_number",      limit: 4
    t.integer  "last_number",     limit: 4
    t.integer  "total_view",      limit: 4
    t.integer  "total_check",     limit: 4
    t.integer  "total_send",      limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
