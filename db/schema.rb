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

ActiveRecord::Schema.define(version: 20150803092231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "profile_basic_repeatables", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profile_basic_repeatables", ["profile_id"], name: "index_profile_basic_repeatables_on_profile_id", using: :btree

  create_table "profile_characteristic_repeatables", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profile_characteristic_repeatables", ["profile_id"], name: "index_profile_characteristic_repeatables_on_profile_id", using: :btree

  create_table "profile_quotes", force: true do |t|
    t.text     "quote"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profile_quotes", ["profile_id"], name: "index_profile_quotes_on_profile_id", using: :btree

  create_table "profile_scalers", force: true do |t|
    t.string   "name"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "scale"
    t.integer  "out_of"
  end

  add_index "profile_scalers", ["profile_id"], name: "index_profile_scalers_on_profile_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "age"
    t.string   "occupation"
    t.string   "pack"
    t.string   "living_situation"
    t.string   "interests"
    t.string   "quote"
    t.integer  "pack_id"
    t.boolean  "generate_name"
    t.string   "background"
    t.string   "motivation"
    t.string   "characteristics"
    t.string   "oppertunities"
    t.string   "cautions"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
