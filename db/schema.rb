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

ActiveRecord::Schema.define(version: 20140617054141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "articles_tags", id: false, force: true do |t|
    t.integer "article_id", null: false
    t.integer "tag_id",     null: false
  end

  create_table "comments", force: true do |t|
    t.string   "body"
    t.integer  "article_id"
    t.integer  "comment_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree
  add_index "comments", ["comment_id"], name: "index_comments_on_comment_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "duties", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "duty_id"
    t.integer  "user_id"
    t.date     "starts_on"
    t.date     "ends_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["duty_id"], name: "index_jobs_on_duty_id", using: :btree
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
