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

ActiveRecord::Schema[7.1].define(version: 2024_02_01_110613) do
  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.decimal "note"
    t.date "passed_at"
    t.integer "branch_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_notes_on_branch_id"
    t.index ["student_id"], name: "index_notes_on_student_id"
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "name"
    t.string "school_year"
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_school_classes_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "email"
    t.string "phone"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "acronym"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "notes", "branches"
  add_foreign_key "notes", "students"
  add_foreign_key "school_classes", "teachers"
end