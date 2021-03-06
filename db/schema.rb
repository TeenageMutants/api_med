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

ActiveRecord::Schema.define(:version => 20151105090148) do

  create_table "analyses", :force => true do |t|
    t.integer  "user_id",                                       :null => false
    t.integer  "patient_id",                                    :null => false
    t.integer  "cat_citology_id"
    t.integer  "cat_vpch_id"
    t.integer  "cat_addition_inspection_id"
    t.text     "diagnostic"
    t.text     "redirect"
    t.boolean  "visual",                     :default => false
    t.integer  "registry_id"
    t.string   "analys_key"
    t.datetime "reception_at"
    t.datetime "registry_at"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.integer  "organization_id"
    t.boolean  "error_add",                  :default => false
    t.integer  "state"
    t.integer  "previous_state"
    t.string   "key_spid"
    t.string   "key_onko"
  end

  create_table "cat_addition_inspections", :force => true do |t|
    t.string "name"
  end

  create_table "cat_citologies", :force => true do |t|
    t.string "name"
  end

  create_table "cat_errors", :force => true do |t|
    t.string "name",        :null => false
    t.text   "description"
  end

  create_table "cat_vpches", :force => true do |t|
    t.string "name"
  end

  create_table "diagnoses", :force => true do |t|
    t.text     "diagnostics"
    t.integer  "user_id"
    t.datetime "next_visit_algorithm"
    t.datetime "next_visit"
    t.boolean  "closed",               :default => false
    t.integer  "mkb_id",                                  :null => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "analyses_id",                             :null => false
  end

  add_index "diagnoses", ["analyses_id"], :name => "index_diagnoses_on_analyses_id"
  add_index "diagnoses", ["mkb_id"], :name => "index_diagnoses_on_mkb_id"
  add_index "diagnoses", ["user_id"], :name => "index_diagnoses_on_user_id"

  create_table "mkbs", :force => true do |t|
    t.string "code",        :null => false
    t.string "name"
    t.text   "description"
  end

  create_table "registries", :force => true do |t|
    t.string   "name"
    t.string   "registry_key"
    t.integer  "user_id",         :null => false
    t.datetime "date_begin"
    t.datetime "date_end"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "statistics", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "primary_reception"
    t.integer  "finished_reception"
    t.datetime "date"
  end

end
