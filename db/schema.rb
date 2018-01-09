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

ActiveRecord::Schema.define(version: 20180109200951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "big_foot_reports", force: :cascade do |t|
    t.integer "report_number"
    t.string "report_class"
    t.string "county"
    t.string "season"
    t.text "location_details"
    t.text "other_witnesses"
    t.string "year"
    t.string "state"
    t.text "observed"
    t.string "time_and_conditions"
    t.text "also_noticed"
    t.text "other_stories"
    t.string "nearest_town"
    t.string "nearest_road"
    t.string "environment"
    t.string "month"
    t.string "date"
    t.text "a_g_references"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "token"
    t.string "refresh_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
