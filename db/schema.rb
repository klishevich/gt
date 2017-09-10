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

ActiveRecord::Schema.define(version: 20170910145303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applics", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "second_name"
    t.string "last_name"
    t.string "full_name_passport"
    t.string "preferred_name"
    t.string "country_citizen"
    t.string "address_street"
    t.string "city"
    t.string "country"
    t.string "postal_code"
    t.string "phone"
    t.string "native_lang"
    t.string "prof_highest_grade"
    t.string "prof_university"
    t.integer "prof_grad_year"
    t.string "prof_actual_position"
    t.string "prof_current_institution"
    t.string "prof_specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_applics_on_user_id"
  end

  create_table "test_models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applics", "users"
end
