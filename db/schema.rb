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

ActiveRecord::Schema.define(version: 20150707094056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "page_meta", force: :cascade do |t|
    t.string   "title"
    t.text     "keywords"
    t.text     "description"
    t.string   "og_title"
    t.text     "og_description"
    t.text     "introduction"
    t.string   "og_image_file_name"
    t.string   "og_image_content_type"
    t.integer  "og_image_file_size"
    t.datetime "og_image_updated_at"
    t.text     "og_image_url"
    t.integer  "bicycle_discount_amount",   default: 20
    t.integer  "bicycle_price",             default: 290
    t.integer  "motorbike_price",           default: 950
    t.date     "end_day",                   default: '2015-09-06'
    t.integer  "motorbike_discount_amount", default: 30
    t.string   "slug"
  end

  create_table "phone_orders", force: :cascade do |t|
    t.string   "fullname"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
