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

ActiveRecord::Schema.define(version: 2021_09_04_171301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", id: { comment: "ID" }, comment: "Contacts", force: :cascade do |t|
    t.string "first_name", comment: "First Name"
    t.string "last_name", null: false, comment: "Last Name"
    t.string "email", comment: "Email"
    t.string "phone", comment: "Phone"
    t.string "title", comment: "Title"
    t.bigint "creator_id", comment: "Created By"
    t.bigint "owner_id", comment: "Assigned To"
    t.bigint "modified_by_id", comment: "Modified By"
    t.boolean "is_converted_from_lead", comment: "Is Converted From Lead"
    t.boolean "is_do_not_call", comment: "Do Not Call"
    t.string "description", comment: "Description Details"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
    t.string "salutation", comment: "Salutation"
    t.bigint "master_lead_source_id", comment: "Lead Source"
    t.string "birthday", comment: "Birthday"
    t.bigint "master_country_id", comment: "Country"
    t.bigint "master_province_id", comment: "Province"
    t.bigint "master_district_id", comment: "District"
    t.bigint "master_ward_id", comment: "Ward"
    t.bigint "street", comment: "Street"
    t.bigint "delete_flag", comment: "Delete Flag"
  end

  create_table "master_lead_sources", id: { comment: "ID" }, comment: "Lead Source", force: :cascade do |t|
    t.string "name", null: false, comment: "Name"
    t.boolean "is_usable", null: false, comment: "Is Usable"
    t.integer "order", null: false, comment: "Order"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

end
