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

ActiveRecord::Schema.define(version: 2019_08_03_235217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "supportq_conversations", force: :cascade do |t|
    t.jsonb "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supportq_foos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supportq_messages", force: :cascade do |t|
    t.bigint "supportq_participant_id"
    t.bigint "supportq_conversation_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supportq_conversation_id"], name: "index_supportq_messages_on_supportq_conversation_id"
    t.index ["supportq_participant_id"], name: "index_supportq_messages_on_supportq_participant_id"
  end

  create_table "supportq_participants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "supportq_messages", "supportq_conversations"
  add_foreign_key "supportq_messages", "supportq_participants"
end
