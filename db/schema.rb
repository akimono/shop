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

ActiveRecord::Schema.define(:version => 20140505225047) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contactors", :force => true do |t|
    t.string   "contactoremail"
    t.string   "contactorsubject"
    t.string   "contactorbody"
    t.string   "contactorname"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "contactbody"
    t.string   "contactemail"
    t.string   "contactname"
    t.string   "contactsubject"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "line_quantity", :default => 1
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "video"
    t.string   "shipping"
    t.decimal  "price"
    t.integer  "quantity"
    t.string   "producttype"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "userpassword"
    t.string   "usertype"
    t.string   "options_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "vendors", :force => true do |t|
    t.string   "vendor_name"
    t.string   "vendor_email"
    t.string   "vendor_image"
    t.string   "vendor_products"
    t.text     "vendor_notes"
    t.string   "vendor_payment"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
