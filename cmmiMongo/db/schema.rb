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

ActiveRecord::Schema.define(version: 20161128225140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_line_documents", force: :cascade do |t|
    t.string   "t_document"
    t.string   "t_state"
    t.integer  "n_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_lines", force: :cascade do |t|
    t.string   "t_name"
    t.string   "t_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "t_name",                  limit: 255
    t.string   "t_logo",                  limit: 255
    t.string   "t_slogan",                limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "processmap_file_name"
    t.string   "processmap_content_type"
    t.integer  "processmap_file_size"
    t.datetime "processmap_updated_at"
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "n_processarea"
    t.string   "t_name",         limit: 255
    t.string   "t_description",  limit: 255
    t.string   "t_type",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "processarea_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string   "t_name",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "t_capability"
    t.string   "t_madurity"
  end

  create_table "practices", force: :cascade do |t|
    t.string   "t_name",        limit: 255
    t.string   "t_description", limit: 255
    t.integer  "n_goal"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "goal_id"
    t.string   "t_code"
  end

  create_table "processareas", force: :cascade do |t|
    t.integer  "n_level"
    t.string   "t_name",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "level_id"
    t.string   "t_initials"
    t.string   "t_category"
    t.boolean  "for_develop"
  end

  create_table "project_steps", force: :cascade do |t|
    t.datetime "n_realtime"
    t.datetime "n_estimatedTime"
    t.float    "n_completionPercentage"
    t.string   "t_state"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "t_name",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "companie_id"
    t.integer  "company_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "t_rolename", limit: 8, null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string  "t_description",        limit: 50
    t.integer "n_practice"
    t.integer "n_yeststep"
    t.integer "n_nostep"
    t.string  "t_typestep",           limit: 50
    t.integer "n_rol"
    t.integer "user_id"
    t.integer "practice_id"
    t.boolean "contains_process"
    t.integer "id_first_step_inside"
    t.integer "parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "address",                limit: 255
    t.integer  "role"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "roles_id"
  end

  add_foreign_key "goals", "processareas"
  add_foreign_key "practices", "goals"
  add_foreign_key "processareas", "levels"
  add_foreign_key "projects", "companies"
  add_foreign_key "steps", "practices"
  add_foreign_key "steps", "users"
  add_foreign_key "users", "roles", column: "roles_id", name: "users_ibfk_1"
end
