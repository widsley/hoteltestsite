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

ActiveRecord::Schema.define(:version => 20130613095734) do

  create_table "bangkok_hotels", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "address"
    t.string   "map"
    t.string   "character"
  end

  add_index "bangkok_hotels", ["address"], :name => "index_bangkok_hotels_on_address"
  add_index "bangkok_hotels", ["character"], :name => "index_bangkok_hotels_on_character"
  add_index "bangkok_hotels", ["map"], :name => "index_bangkok_hotels_on_map"
  add_index "bangkok_hotels", ["name"], :name => "index_bangkok_hotels_on_name"

  create_table "facilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "summary"
    t.text     "activity"
    t.text     "service"
    t.string   "internet"
    t.string   "parking"
    t.string   "checkin"
    t.string   "checkout"
  end

  add_index "facilities", ["activity"], :name => "index_facilities_on_activity"
  add_index "facilities", ["checkin"], :name => "index_facilities_on_checkin"
  add_index "facilities", ["checkout"], :name => "index_facilities_on_checkout"
  add_index "facilities", ["internet"], :name => "index_facilities_on_internet"
  add_index "facilities", ["parking"], :name => "index_facilities_on_parking"
  add_index "facilities", ["service"], :name => "index_facilities_on_service"
  add_index "facilities", ["summary"], :name => "index_facilities_on_summary"

  create_table "facility_ownerships", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "facility_ids"
    t.integer  "bangkok_hotel_ids"
  end

end
