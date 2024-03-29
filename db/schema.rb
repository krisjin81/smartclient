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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130521133624) do

  create_table "employees", :primary_key => "EmployeeId", :force => true do |t|
    t.string   "Name"
    t.string   "ReportsTo"
    t.string   "Job"
    t.string   "Email"
    t.string   "EmployeeType"
    t.string   "EmployeeStatus"
    t.float    "Salary"
    t.string   "OrgUnit"
    t.string   "Gender"
    t.string   "MaritalStatus"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "supplyitems", :primary_key => "itemID", :force => true do |t|
    t.string   "itemName"
    t.string   "SKU"
    t.string   "description"
    t.string   "category"
    t.string   "units"
    t.float    "unitCost"
    t.boolean  "inStock"
    t.datetime "nextShipment"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
