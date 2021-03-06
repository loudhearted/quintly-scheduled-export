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

ActiveRecord::Schema.define(version: 20140512152332) do

  create_table "quintly_profiles", force: true do |t|
    t.integer  "profile_id"
    t.string   "company"
    t.string   "profile_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quintly_workers", force: true do |t|
    t.integer  "subscription_id"
    t.string   "quintly_metric"
    t.integer  "quintly_period"
    t.string   "quintly_interval"
    t.string   "quintly_profileids"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quintly_workers", ["subscription_id"], name: "index_quintly_workers_on_subscription_id", using: :btree

  create_table "subscriptions", force: true do |t|
    t.string   "email"
    t.string   "vendor",     null: false
    t.string   "cron"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
