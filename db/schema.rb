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

ActiveRecord::Schema.define(:version => 20120307044145) do

  create_table "agencies", :force => true do |t|
    t.integer  "federal_id_number"
    t.string   "name"
    t.integer  "year_admitted"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.integer  "fax"
    t.string   "website_address"
    t.string   "contact_name"
    t.string   "email_address"
    t.text     "agency_mission"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "agencies", ["federal_id_number"], :name => "index_agencies_on_federal_id_number", :unique => true

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
