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

ActiveRecord::Schema.define(version: 20180419121223) do

  create_table "followed_recent_events", force: :cascade do |t|
    t.string "event_type"
    t.string "login"
    t.string "repo"
    t.integer "user_id", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followed_recent_events_on_user_id"
  end

  create_table "followed_users", force: :cascade do |t|
    t.integer "user_id", limit: 8
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followed_users_on_user_id"
  end

  create_table "followers", force: :cascade do |t|
    t.integer "user_id", limit: 8
    t.string "name"
    t.string "follower_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "recent_events", force: :cascade do |t|
    t.string "event_type"
    t.string "repo"
    t.integer "user_id", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recent_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "provider"
    t.text "uid"
    t.string "oauth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_image"
    t.string "email"
  end

end
