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

ActiveRecord::Schema.define(version: 20170216191605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parcels", force: :cascade do |t|
    t.integer  "user_id",                       null: false
    t.integer  "service_point_id",              null: false
    t.integer  "weight",                        null: false
    t.string   "size",                          null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "sender",           default: ""
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "parcel_id",                      null: false
    t.integer  "owner_id",                       null: false
    t.integer  "courier_id"
    t.integer  "price",                          null: false
    t.string   "address",                        null: false
    t.boolean  "accepted",       default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "status_message", default: ""
    t.boolean  "picked_up",      default: false
    t.boolean  "delivered",      default: false
  end

  create_table "service_points", force: :cascade do |t|
    t.string   "name",       null: false
    t.decimal  "longitude",  null: false
    t.decimal  "latitude",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest"
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
