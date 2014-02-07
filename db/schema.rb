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

ActiveRecord::Schema.define(version: 20140207131658) do

  create_table "buses", force: true do |t|
    t.integer  "bus_id"
    t.integer  "bus_capacity"
    t.string   "bus_route"
    t.string   "bus_driver"
    t.time     "bus_arrivetime"
    t.time     "bus_departtime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "driver_licence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "employee_halt"
    t.time     "employee_arrivation"
    t.time     "employee_departure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "halts", force: true do |t|
    t.integer  "halt_id"
    t.integer  "bus_id"
    t.string   "halt_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.integer  "bus_id"
    t.integer  "halt_id"
    t.text     "address"
    t.string   "job_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
