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

ActiveRecord::Schema.define(:version => 20130512194438) do

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "day_outs", :force => true do |t|
    t.string   "date"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "outdoor_area_id"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friend_create_a_days", :force => true do |t|
    t.integer  "friend_id"
    t.integer  "create_a_day_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "friend_id"
  end

  create_table "groups", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "likes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetups", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "zipcode"
    t.string   "topic"
    t.string   "event_url"
    t.text     "description"
    t.integer  "yes_rsvp_count"
  end

  create_table "outdoor_areas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "address"
    t.float    "acreage"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "restaurants", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "latitude"
    t.string   "city"
    t.string   "state"
    t.string   "yelp_id"
    t.string   "yelp_stars_url"
    t.string   "name"
    t.string   "address"
    t.string   "zip_code"
    t.string   "image_url"
    t.string   "yelp_rating"
    t.string   "foursquare_rating"
    t.string   "foursquare_review"
    t.boolean  "wifi"
    t.boolean  "outdoor_area"
    t.string   "category"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wifis", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "location"
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.string   "AddLongitudeToWifi"
    t.float    "longitude"
  end

end
