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

ActiveRecord::Schema.define(version: 2021_07_22_020707) do

  create_table "articles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.text "situation", null: false
    t.string "article_image1", null: false
    t.text "description1", null: false
    t.string "article_image2", null: false
    t.text "description2", null: false
    t.string "article_image3", null: false
    t.text "description3", null: false
    t.string "article_image4", null: false
    t.text "description4", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "post_comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_likes_on_article_id"
    t.index ["user_id", "article_id"], name: "index_likes_on_user_id_and_article_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "article_id", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "name_sei", null: false
    t.string "name_mei", null: false
    t.string "name_kana_sei", null: false
    t.string "name_kana_mei", null: false
    t.integer "tel", null: false
    t.string "profile_name", null: false
    t.string "profile_image", null: false
    t.text "introduction", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
