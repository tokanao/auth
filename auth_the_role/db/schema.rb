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

ActiveRecord::Schema.define(version: 20170223071724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "personal_cd"
    t.integer  "parent_customer_id"
    t.string   "member_store_cd"
    t.string   "charge_cd"
    t.string   "customer_nm"
    t.string   "customer_kana"
    t.string   "customer_type",      limit: 1
    t.string   "is_manage_company",  limit: 1
    t.string   "president_nm"
    t.string   "post"
    t.date     "birth"
    t.string   "sex",                limit: 1
    t.string   "zip_cd"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "addr3"
    t.string   "tel"
    t.string   "fax"
    t.string   "mobile_number"
    t.string   "email"
    t.string   "si_owner_f",         limit: 1
    t.string   "si_client_f",        limit: 1
    t.string   "bb_owner_f",         limit: 1
    t.string   "bb_agency_f",        limit: 1
    t.text     "note"
    t.integer  "create_user_id"
    t.integer  "update_user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "title",       null: false
    t.text     "description", null: false
    t.text     "the_role",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login_id"
    t.string   "login_password"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "role_id"
  end

end
