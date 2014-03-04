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

ActiveRecord::Schema.define(version: 20140304215036) do

  create_table "boards", force: true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.text     "tweet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "detail"
    t.string   "planner"
    t.integer  "password"
    t.integer  "due_date_id"
    t.integer  "due_place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hope_dates", force: true do |t|
    t.integer  "member_id"
    t.integer  "schedule_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hope_places", force: true do |t|
    t.integer  "member_id"
    t.integer  "schedule_place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.integer  "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_dates", force: true do |t|
    t.integer  "event_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_places", force: true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.string   "address"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
