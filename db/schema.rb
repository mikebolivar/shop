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

ActiveRecord::Schema.define(version: 20160513081519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.boolean  "checked"
    t.string   "shopify_comment_id"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.boolean  "checked"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "type"
    t.string   "image"
    t.string   "author"
    t.string   "title"
    t.text     "body"
    t.string   "place"
    t.float    "rating"
    t.integer  "no_likes"
    t.integer  "no_shareds"
    t.integer  "no_views"
    t.integer  "no_comments"
    t.boolean  "public"
    t.string   "shopify_article_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "body_html"
    t.text     "variants"
    t.text     "images"
    t.integer  "shopify_product_id"
    t.datetime "shopify_last_update"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.boolean  "checked"
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["post_id"], name: "index_reviews_on_post_id", using: :btree
  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "shareds", force: :cascade do |t|
    t.string   "via"
    t.text     "body"
    t.boolean  "checked"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shareds", ["post_id"], name: "index_shareds_on_post_id", using: :btree
  add_index "shareds", ["user_id"], name: "index_shareds_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", force: :cascade do |t|
    t.boolean  "checked"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "views", ["post_id"], name: "index_views_on_post_id", using: :btree
  add_index "views", ["user_id"], name: "index_views_on_user_id", using: :btree

  create_table "webhooks", force: :cascade do |t|
    t.integer  "shopify_webhook_id"
    t.string   "event"
    t.text     "object_json"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "reviews", "posts"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "shareds", "posts"
  add_foreign_key "shareds", "users"
  add_foreign_key "views", "posts"
  add_foreign_key "views", "users"
end
