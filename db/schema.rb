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

ActiveRecord::Schema.define(version: 2020_10_21_135224) do

  create_table "excursion_package_joiners", force: :cascade do |t|
    t.integer "excursion_id"
    t.integer "trip_package_id"
  end

  create_table "excursions", force: :cascade do |t|
    t.string "name"
  end

  create_table "trip_packages", force: :cascade do |t|
    t.string "name"
    t.integer "budget"
    t.integer "excursion_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "visitor_id"
    t.integer "trip_package_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "name"
    t.integer "budget"
  end

end
