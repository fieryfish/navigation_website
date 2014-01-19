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

ActiveRecord::Schema.define(version: 20131217155630) do

  create_table "link_site_users", force: true do |t|
    t.integer  "user_id",        default: 0, null: false
    t.integer  "site_id",        default: 0, null: false
    t.integer  "location",       default: 0, null: false
    t.integer  "like",           default: 0, null: false
    t.integer  "publish_status", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "link_tag_sites", force: true do |t|
    t.integer  "tag_id",     default: 0, null: false
    t.integer  "site_id",    default: 0, null: false
    t.integer  "rank",       default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "link_tag_users", force: true do |t|
    t.integer  "user_id",        default: 0, null: false
    t.integer  "tag_id",         default: 0, null: false
    t.integer  "location",       default: 0, null: false
    t.integer  "like",           default: 0, null: false
    t.integer  "publish_status", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "name",                                    default: "", null: false
    t.string   "name_eng",                                default: "", null: false
    t.string   "name_origin",                             default: "", null: false
    t.string   "url",                                     default: "", null: false
    t.integer  "publish_status",                          default: 0,  null: false
    t.string   "seo_name",                                default: "", null: false
    t.text     "description"
    t.decimal  "added",          precision: 10, scale: 0, default: 0,  null: false
    t.decimal  "lang_type",      precision: 10, scale: 0, default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name",       default: "", null: false
    t.integer  "sub_tag_id", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
