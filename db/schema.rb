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

ActiveRecord::Schema.define(:version => 20130601190802) do

  create_table "apiaries", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "coordinates"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "capacity"
  end

  create_table "beehives", :force => true do |t|
    t.string   "codigo"
    t.integer  "apiary_id"
    t.integer  "beehive_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bills", :force => true do |t|
    t.integer  "customer_id"
    t.string   "total_amount"
    t.datetime "date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bills_products", :force => true do |t|
    t.integer "bill_id"
    t.integer "product_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "business_phone"
    t.string   "personal_phone"
    t.string   "coordinates"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "weigth"
    t.string   "volume"
    t.string   "unit_price"
    t.string   "stock"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "beehive_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
