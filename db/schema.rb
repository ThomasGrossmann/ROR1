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

ActiveRecord::Schema[7.1].define(version: 2024_04_01_130631) do
  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.integer "status", default: 0
    t.integer "semester_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_branches_on_semester_id"
  end

  create_table "branches_school_classes", id: false, force: :cascade do |t|
    t.integer "branch_id", null: false
    t.integer "school_class_id", null: false
    t.index ["branch_id", "school_class_id"], name: "index_branches_school_classes_on_branch_id_and_school_class_id"
    t.index ["school_class_id", "branch_id"], name: "index_branches_school_classes_on_school_class_id_and_branch_id"
  end

  create_table "branches_users", id: false, force: :cascade do |t|
    t.integer "branch_id", null: false
    t.integer "user_id", null: false
    t.index ["branch_id", "user_id"], name: "index_branches_users_on_branch_id_and_user_id"
    t.index ["user_id", "branch_id"], name: "index_branches_users_on_user_id_and_branch_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "theme"
    t.date "date"
    t.integer "branch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_exams_on_branch_id"
  end

  create_table "grades", force: :cascade do |t|
    t.decimal "grade"
    t.integer "exam_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_grades_on_exam_id"
    t.index ["user_id"], name: "index_grades_on_user_id"
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "name"
    t.string "school_year"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_school_classes_on_user_id"
  end

  create_table "school_classes_users", id: false, force: :cascade do |t|
    t.integer "school_class_id", null: false
    t.integer "user_id", null: false
    t.index ["school_class_id", "user_id"], name: "index_school_classes_users_on_school_class_id_and_user_id"
    t.index ["user_id", "school_class_id"], name: "index_school_classes_users_on_user_id_and_school_class_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "type"
    t.string "lastname"
    t.string "firstname"
    t.string "acronym"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "phone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "branches", "semesters"
  add_foreign_key "exams", "branches"
  add_foreign_key "grades", "exams"
  add_foreign_key "grades", "users"
  add_foreign_key "school_classes", "users"
end
