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

ActiveRecord::Schema.define(version: 20150218022419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "instructor"
    t.integer  "min_students"
    t.integer  "max_students"
    t.integer  "min_cmac_age"
    t.integer  "max_cmac_age"
    t.string   "min_grade"
    t.string   "max_grade"
    t.decimal  "cost"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "homeroom"
    t.boolean  "is_boarding"
    t.string   "grade"
    t.date     "birthdate"
    t.string   "email"
    t.string   "phone_number"
    t.text     "health_details"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
