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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130408083912) do

  create_table "bios", :force => true do |t|
    t.text     "content"
    t.integer  "language_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "bios", ["language_id"], :name => "index_bios_on_language_id"

  create_table "job_descriptions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "language_id"
    t.integer  "job_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "job_descriptions", ["job_id"], :name => "index_job_descriptions_on_job_id"
  add_index "job_descriptions", ["language_id"], :name => "index_job_descriptions_on_language_id"

  create_table "jobs", :force => true do |t|
    t.boolean  "isShown"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "locale"
    t.string   "flag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "thumbs", :force => true do |t|
    t.string   "picture"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "thumbs", ["job_id"], :name => "index_thumbs_on_job_id"

  create_table "users", :force => true do |t|
    t.string   "password_digest"
    t.boolean  "isAdmin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
  end

end
