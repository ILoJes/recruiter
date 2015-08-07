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

ActiveRecord::Schema.define(version: 20150806223847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "notes"
    t.integer  "sex_id"
    t.integer  "salary"
    t.string   "current_position"
    t.date     "work_from"
    t.date     "birthday"
    t.integer  "candidates_status_id"
    t.integer  "recruiter_id"
    t.boolean  "shared"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "candidates", ["candidates_status_id"], name: "index_candidates_on_candidates_status_id", using: :btree
  add_index "candidates", ["recruiter_id"], name: "index_candidates_on_recruiter_id", using: :btree
  add_index "candidates", ["sex_id"], name: "index_candidates_on_sex_id", using: :btree

  create_table "candidates_contacts", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "channel_id"
    t.string   "contact"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "candidates_contacts", ["candidate_id"], name: "index_candidates_contacts_on_candidate_id", using: :btree
  add_index "candidates_contacts", ["channel_id"], name: "index_candidates_contacts_on_channel_id", using: :btree

  create_table "candidates_skills", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "skill_id"
    t.string   "calue"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "candidates_skills", ["candidate_id"], name: "index_candidates_skills_on_candidate_id", using: :btree
  add_index "candidates_skills", ["skill_id"], name: "index_candidates_skills_on_skill_id", using: :btree

  create_table "candidates_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates_statuses_histories", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "vacancy_id"
    t.integer  "candidates_status_id"
    t.date     "date"
    t.text     "notes"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "candidates_statuses_histories", ["candidate_id"], name: "index_candidates_statuses_histories_on_candidate_id", using: :btree
  add_index "candidates_statuses_histories", ["candidates_status_id"], name: "index_candidates_statuses_histories_on_candidates_status_id", using: :btree
  add_index "candidates_statuses_histories", ["vacancy_id"], name: "index_candidates_statuses_histories_on_vacancy_id", using: :btree

  create_table "channels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.string   "email"
    t.string   "password"
    t.integer  "status_id"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "companies", ["status_id"], name: "index_companies_on_status_id", using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "candidates_contact_id"
    t.integer  "recruiter_id"
    t.date     "date"
    t.text     "message"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "conversations", ["candidates_contact_id"], name: "index_conversations_on_candidates_contact_id", using: :btree
  add_index "conversations", ["recruiter_id"], name: "index_conversations_on_recruiter_id", using: :btree

  create_table "cvs", force: :cascade do |t|
    t.integer  "candidate_id"
    t.integer  "recruiter_id"
    t.binary   "file"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cvs", ["candidate_id"], name: "index_cvs_on_candidate_id", using: :btree
  add_index "cvs", ["recruiter_id"], name: "index_cvs_on_recruiter_id", using: :btree

  create_table "recruiters", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.integer  "status_id"
    t.string   "phone"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recruiters", ["company_id"], name: "index_recruiters_on_company_id", using: :btree
  add_index "recruiters", ["role_id"], name: "index_recruiters_on_role_id", using: :btree
  add_index "recruiters", ["status_id"], name: "index_recruiters_on_status_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "skills_type_id"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "skills", ["skills_type_id"], name: "index_skills_on_skills_type_id", using: :btree

  create_table "skills_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacancies", force: :cascade do |t|
    t.string   "summary"
    t.text     "about_company"
    t.text     "responsibilities"
    t.text     "conditions"
    t.text     "bonuses"
    t.integer  "min_salary"
    t.integer  "max_salary"
    t.integer  "company_id"
    t.integer  "experience"
    t.integer  "status_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "vacancies", ["company_id"], name: "index_vacancies_on_company_id", using: :btree
  add_index "vacancies", ["status_id"], name: "index_vacancies_on_status_id", using: :btree

  create_table "vacancies_skills", force: :cascade do |t|
    t.integer  "vacancy_id"
    t.integer  "skill_id"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vacancies_skills", ["skill_id"], name: "index_vacancies_skills_on_skill_id", using: :btree
  add_index "vacancies_skills", ["vacancy_id"], name: "index_vacancies_skills_on_vacancy_id", using: :btree

  add_foreign_key "candidates", "candidates_statuses"
  add_foreign_key "candidates", "recruiters"
  add_foreign_key "candidates", "sexes"
  add_foreign_key "candidates_contacts", "candidates"
  add_foreign_key "candidates_contacts", "channels"
  add_foreign_key "candidates_skills", "candidates"
  add_foreign_key "candidates_skills", "skills"
  add_foreign_key "candidates_statuses_histories", "candidates"
  add_foreign_key "candidates_statuses_histories", "candidates_statuses"
  add_foreign_key "candidates_statuses_histories", "vacancies"
  add_foreign_key "companies", "statuses"
  add_foreign_key "conversations", "candidates_contacts"
  add_foreign_key "conversations", "recruiters"
  add_foreign_key "cvs", "candidates"
  add_foreign_key "cvs", "recruiters"
  add_foreign_key "recruiters", "companies"
  add_foreign_key "recruiters", "roles"
  add_foreign_key "recruiters", "statuses"
  add_foreign_key "skills", "skills_types"
  add_foreign_key "vacancies", "companies"
  add_foreign_key "vacancies", "statuses"
  add_foreign_key "vacancies_skills", "skills"
  add_foreign_key "vacancies_skills", "vacancies"
end
