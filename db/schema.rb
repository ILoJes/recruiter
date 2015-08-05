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

ActiveRecord::Schema.define(version: 20150805221018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string   "fio"
    t.string   "password"
    t.string   "email"
    t.text     "history"
    t.text     "summary"
    t.text     "skils"
    t.float    "salary_min"
    t.float    "salary_max"
    t.integer  "expirience"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.text     "about"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "recruiter_id"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["candidate_id"], name: "index_messages_on_candidate_id", using: :btree
  add_index "messages", ["recruiter_id"], name: "index_messages_on_recruiter_id", using: :btree

  create_table "recruiters", force: :cascade do |t|
    t.string   "fio"
    t.integer  "company_id"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recruiters", ["company_id"], name: "index_recruiters_on_company_id", using: :btree

  create_table "vacancies", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.float    "salary_max"
    t.float    "salary_min"
    t.text     "body"
    t.text     "skills"
    t.text     "respons"
    t.integer  "experience"
    t.text     "conditions"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vacancies", ["company_id"], name: "index_vacancies_on_company_id", using: :btree

  add_foreign_key "messages", "candidates"
  add_foreign_key "messages", "recruiters"
  add_foreign_key "recruiters", "companies"
  add_foreign_key "vacancies", "companies"
end
