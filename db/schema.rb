# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090520194437) do

  create_table "businesses", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "person_id"
  end

  create_table "contact_details", :force => true do |t|
    t.string  "steet_address"
    t.string  "area"
    t.string  "city"
    t.string  "state"
    t.integer "pincode"
    t.integer "business_id"
  end

  create_table "marriages", :force => true do |t|
    t.integer "husband_id"
    t.integer "wife_id"
  end

  create_table "people", :force => true do |t|
    t.integer  "father_id"
    t.integer  "mother_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "education"
    t.string   "sex",               :limit => 1
    t.date     "dob"
    t.integer  "contact_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", :force => true do |t|
    t.integer "number"
    t.integer "contact_detail_id"
  end

end
