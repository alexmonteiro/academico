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

ActiveRecord::Schema.define(:version => 20120806191505) do

  create_table "blood_types", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "class_season_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "class_seasons", :force => true do |t|
    t.integer  "year"
    t.integer  "number"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "class_season_type_id"
    t.integer  "dept_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "class_seasons", ["class_season_type_id"], :name => "index_class_seasons_on_class_season_type_id"
  add_index "class_seasons", ["dept_id"], :name => "index_class_seasons_on_dept_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "nationality"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dept_types", :force => true do |t|
    t.string   "dept_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "depts", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "cnpj"
    t.date     "started_at"
    t.date     "finished_at"
    t.string   "site"
    t.string   "email"
    t.string   "description"
    t.integer  "dept_type_id"
    t.integer  "dept_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "depts", ["dept_id"], :name => "index_depts_on_dept_id"
  add_index "depts", ["dept_type_id"], :name => "index_depts_on_dept_type_id"

  create_table "education_degrees", :force => true do |t|
    t.string   "degree"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "education_levels", :force => true do |t|
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "education_modalities", :force => true do |t|
    t.string   "description"
    t.integer  "education_step_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "education_modalities", ["education_step_id"], :name => "index_education_modalities_on_education_step_id"

  create_table "education_steps", :force => true do |t|
    t.string   "description"
    t.integer  "education_level_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "education_steps", ["education_level_id"], :name => "index_education_steps_on_education_level_id"

  create_table "genders", :force => true do |t|
    t.string   "gender"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "birth_date"
    t.string   "father_name"
    t.string   "mom_name"
    t.string   "email"
    t.string   "lattes_url"
    t.integer  "gender_id"
    t.integer  "education_degree_id"
    t.integer  "race_id"
    t.integer  "marital_status_id"
    t.integer  "blood_type_id"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "number_children"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "person_type_id"
  end

  add_index "people", ["blood_type_id"], :name => "index_people_on_blood_type_id"
  add_index "people", ["city_id"], :name => "index_people_on_city_id"
  add_index "people", ["country_id"], :name => "index_people_on_country_id"
  add_index "people", ["education_degree_id"], :name => "index_people_on_education_degree_id"
  add_index "people", ["gender_id"], :name => "index_people_on_gender_id"
  add_index "people", ["marital_status_id"], :name => "index_people_on_marital_status_id"
  add_index "people", ["race_id"], :name => "index_people_on_race_id"
  add_index "people", ["state_id"], :name => "index_people_on_state_id"

  create_table "people_telephones", :force => true do |t|
    t.integer  "telephone_type_id"
    t.integer  "people_id"
    t.integer  "area_code"
    t.integer  "number"
    t.integer  "branch"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "people_telephones", ["people_id"], :name => "index_people_telephones_on_people_id"
  add_index "people_telephones", ["telephone_type_id"], :name => "index_people_telephones_on_telephone_type_id"

  create_table "person_person_types", :force => true do |t|
    t.integer  "person_id"
    t.integer  "person_type_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "person_person_types", ["person_id"], :name => "index_person_person_types_on_person_id"
  add_index "person_person_types", ["person_type_id"], :name => "index_person_person_types_on_person_type_id"

  create_table "person_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "race"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "special_needs_types", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "states", ["country_id"], :name => "index_states_on_country_id"

  create_table "techaxes", :force => true do |t|
    t.string   "techaxis"
    t.integer  "techaxis_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "techaxes", ["techaxis_type_id"], :name => "index_techaxes_on_techaxis_type_id"

  create_table "techaxis_types", :force => true do |t|
    t.string   "techaxis_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "telephone_types", :force => true do |t|
    t.string   "telephone_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
