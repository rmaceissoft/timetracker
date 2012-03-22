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

ActiveRecord::Schema.define(:version => 20120322182620) do

  create_table "clients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "initials"
    t.string   "company_name"
    t.string   "email"
    t.string   "phone"
    t.string   "state"
    t.string   "city"
    t.string   "zip_code"
    t.text     "address"
    t.string   "country"
    t.boolean  "active"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "invoice_cycles", :force => true do |t|
    t.string   "cycle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proyect_positions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proyect_positions_users", :id => false, :force => true do |t|
    t.integer "proyect_position_id"
    t.integer "user_id"
  end

  create_table "proyect_statuses", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "proyect_users", :force => true do |t|
    t.integer  "proyect_id"
    t.integer  "user_id"
    t.integer  "proyect_position_id"
    t.decimal  "estimate_hours",      :precision => 8, :scale => 2
    t.decimal  "rate",                :precision => 8, :scale => 2
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "proyects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "invoice_cycle_id"
    t.integer  "creator_id"
    t.integer  "status_id"
    t.boolean  "active",           :default => true
    t.boolean  "internal",         :default => false
  end

  add_index "proyects", ["creator_id"], :name => "index_proyects_on_creator_id"
  add_index "proyects", ["invoice_cycle_id"], :name => "index_proyects_on_invoice_cycle_id"
  add_index "proyects", ["status_id"], :name => "index_proyects_on_status_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "tasks", :force => true do |t|
    t.text     "description"
    t.datetime "date_add"
    t.decimal  "hours",       :precision => 9, :scale => 2
    t.integer  "proyect_id"
    t.boolean  "is_billable"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "creator_id"
  end

  add_index "tasks", ["creator_id"], :name => "index_tasks_on_creator_id"
  add_index "tasks", ["proyect_id"], :name => "index_tasks_on_proyect_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
