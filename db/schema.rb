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

ActiveRecord::Schema.define(version: 2021_04_19_203000) do

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
    t.bigint "master_leadsource_id", comment: "Lead Source"
    t.boolean "is_converted_from_lead", comment: "Is Converted From Lead"
    t.boolean "is_do_not_call", comment: "Do Not Call"
    t.string "source", comment: "Source"
    t.string "description", comment: "Description Details"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

end
