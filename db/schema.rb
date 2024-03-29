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

ActiveRecord::Schema.define(version: 20160331033546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leads", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone"
    t.string  "business_name"
    t.string  "state"
    t.string  "business_type"
    t.string  "payment_methods"
    t.decimal "annual_average_processing_volume"
    t.decimal "average_sale_amount"
    t.decimal "last_month_processing_volume"
    t.decimal "last_month_processing_fees"
    t.integer "chargebacks"
  end

  create_table "quotes", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone"
    t.string  "business_name"
    t.string  "state"
    t.string  "bm_business_type"
    t.string  "ecomm_business_type"
    t.string  "payment_methods"
    t.decimal "annual_average_processing_volume"
    t.decimal "average_sale_amount"
    t.decimal "last_month_processing_volume"
    t.decimal "last_month_processing_fees"
    t.integer "chargebacks"
  end

end
