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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131023095045) do

  create_table "applications", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "android_link"
    t.string   "ios_link"
    t.string   "locale"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "web_link"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "locale"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "screenshots", :force => true do |t|
    t.integer  "application_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

  add_index "screenshots", ["application_id"], :name => "index_screenshots_on_application_id"

  create_table "workers", :force => true do |t|
    t.string   "name"
    t.string   "job"
    t.string   "phone"
    t.string   "email"
    t.string   "skype"
    t.string   "region"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "locale"
  end

end
