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

ActiveRecord::Schema.define(:version => 20121101003707) do

  create_table "characters", :force => true do |t|
    t.integer  "fighter_levels", :default => 0
    t.integer  "wizard_levels",  :default => 0
    t.integer  "str",            :default => 0
    t.integer  "dex",            :default => 0
    t.integer  "con",            :default => 0
    t.integer  "wis",            :default => 0
    t.integer  "int",            :default => 0
    t.integer  "cha",            :default => 0
    t.string   "roles"
    t.string   "race"
    t.string   "primary_role"
    t.string   "name"
    t.string   "height"
    t.string   "age"
    t.text     "description"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "fighter_stuffs", :force => true do |t|
    t.string   "bonus_stat"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
