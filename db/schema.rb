# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_09_041936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courier_details", force: :cascade do |t|
    t.string "sender_name"
    t.text "sender_address"
    t.integer "sender_contact"
    t.integer "sender_pincode"
    t.string "receiver_name"
    t.text "receiver_address"
    t.integer "receiver_contact"
    t.integer "receiver_pincode"
    t.integer "parcel_weight"
    t.string "service_type"
    t.float "service_cost"
    t.string "payment_mode"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_courier_details_on_user_id"
  end

  create_table "courier_statuses", force: :cascade do |t|
    t.integer "status_code"
    t.string "status"
    t.bigint "courier_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["courier_detail_id"], name: "index_courier_statuses_on_courier_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "courier_details", "users"
  add_foreign_key "courier_statuses", "courier_details"
end
