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

ActiveRecord::Schema.define(version: 20131214200751) do

  create_table "sites", force: true do |t|
    t.string   "name_chn",                                  default: "", null: false
    t.string   "name_eng",                                  default: "", null: false
    t.string   "url",                                       default: "", null: false
    t.integer  "publish_status",                            default: 0,  null: false
    t.string   "seo_name",                                  default: "", null: false
    t.string   "page_title",                                default: "", null: false
    t.string   "page_keyowrds",                             default: "", null: false
    t.text     "page_description"
    t.string   "phone",                                     default: "", null: false
    t.integer  "location",                                  default: 0,  null: false
    t.decimal  "score",            precision: 10, scale: 0, default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name",       default: "", null: false
    t.integer  "sub_tag_id", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
