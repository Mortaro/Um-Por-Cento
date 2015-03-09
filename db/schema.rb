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

ActiveRecord::Schema.define(version: 20150308234650) do

  create_table "members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "avatar"
    t.string   "name"
    t.string   "birthday"
    t.string   "kin"
    t.text     "about"
    t.string   "kind"
    t.string   "role"
    t.text     "facebook"
    t.text     "instagram"
    t.text     "medium"
    t.text     "youtube"
    t.text     "vimeo"
  end

  create_table "partners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "logo"
    t.string   "role"
    t.string   "name"
    t.string   "link"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
    t.string   "name"
    t.string   "category"
    t.string   "date"
    t.string   "kind"
    t.text     "about"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "vimeo"
    t.string   "link"
    t.string   "embed"
  end

  create_table "slides", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title"
    t.text     "image"
    t.string   "caption_top"
    t.string   "caption_bottom"
  end

  create_table "stamps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "logo"
    t.string   "role"
    t.string   "name"
    t.string   "link"
  end

  create_table "sutler_users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "sutler_users", ["email"], name: "index_sutler_users_on_email", unique: true
  add_index "sutler_users", ["reset_password_token"], name: "index_sutler_users_on_reset_password_token", unique: true

  create_table "texts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
  end

end
