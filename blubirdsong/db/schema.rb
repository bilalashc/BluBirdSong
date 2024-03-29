# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_02_225705) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "subject"
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.text "content"
    t.bigint "post_id", null: false
    t.bigint "parent_reply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_reply_id"], name: "index_replies_on_parent_reply_id"
    t.index ["post_id"], name: "index_replies_on_post_id"
  end

  add_foreign_key "replies", "posts"
  add_foreign_key "replies", "replies", column: "parent_reply_id"
end
