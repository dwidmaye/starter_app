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

ActiveRecord::Schema.define(version: 20131024225431) do

  create_table "comments", force: true do |t|
    t.integer  "story_id"
    t.integer  "user_id"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.string   "goal"
    t.string   "stakeholder"
    t.string   "behavior"
    t.integer  "business_value"
    t.integer  "complexity_value"
    t.string   "tag"
    t.string   "assignee"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",           default: "ice box", null: false
  end

  add_index "stories", ["business_value"], name: "index_stories_on_business_value", using: :btree

end
