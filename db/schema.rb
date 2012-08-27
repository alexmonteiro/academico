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

ActiveRecord::Schema.define(:version => 20120823143036) do

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

  create_table "course_vacancies", :force => true do |t|
    t.integer  "course_id"
    t.integer  "class_season_id"
    t.integer  "shift_type_id"
    t.integer  "number_vacancies"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "course_vacancies", ["class_season_id"], :name => "index_course_vacancies_on_class_season_id"
  add_index "course_vacancies", ["course_id"], :name => "index_course_vacancies_on_course_id"
  add_index "course_vacancies", ["shift_type_id"], :name => "index_course_vacancies_on_shift_type_id"

  create_table "courses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "nickname"
    t.string   "goal"
    t.integer  "maxtime"
    t.integer  "mintime"
    t.date     "started_at"
    t.date     "ended_at"
    t.integer  "dept_id"
    t.integer  "registration_scheme_id"
    t.integer  "class_season_type_id"
    t.integer  "learning_modality_id"
    t.integer  "knowledge_area_id"
    t.integer  "techaxes_id"
    t.integer  "education_modality_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "courses", ["class_season_type_id"], :name => "index_courses_on_class_season_type_id"
  add_index "courses", ["dept_id"], :name => "index_courses_on_dept_id"
  add_index "courses", ["education_modality_id"], :name => "index_courses_on_education_modality_id"
  add_index "courses", ["knowledge_area_id"], :name => "index_courses_on_knowledge_area_id"
  add_index "courses", ["learning_modality_id"], :name => "index_courses_on_learning_modality_id"
  add_index "courses", ["registration_scheme_id"], :name => "index_courses_on_registration_scheme_id"
  add_index "courses", ["techaxes_id"], :name => "index_courses_on_techaxes_id"

  create_table "dept_addresses", :force => true do |t|
    t.integer  "street_type_id"
    t.integer  "city_id"
    t.string   "street_name"
    t.string   "complement"
    t.string   "post_office_box"
    t.string   "neighborhood"
    t.integer  "zip_code"
    t.string   "number"
    t.integer  "provenance_area_id"
    t.integer  "dept_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "dept_addresses", ["city_id"], :name => "index_dept_addresses_on_city_id"
  add_index "dept_addresses", ["dept_id"], :name => "index_dept_addresses_on_dept_id"
  add_index "dept_addresses", ["provenance_area_id"], :name => "index_dept_addresses_on_provenance_area_id"
  add_index "dept_addresses", ["street_type_id"], :name => "index_dept_addresses_on_street_type_id"

  create_table "dept_telephones", :force => true do |t|
    t.integer  "telephone_type_id"
    t.integer  "dept_id"
    t.integer  "area_code"
    t.integer  "number"
    t.integer  "branch"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "dept_telephones", ["dept_id"], :name => "index_dept_telephones_on_dept_id"
  add_index "dept_telephones", ["telephone_type_id"], :name => "index_dept_telephones_on_telephone_type_id"

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

  create_table "discipline_classes", :force => true do |t|
    t.integer  "school_class_id"
    t.integer  "matrix_discipline_id"
    t.string   "code"
    t.integer  "vancancies"
    t.date     "started_at"
    t.date     "ending_at"
    t.date     "timetable_started_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "discipline_classes", ["matrix_discipline_id"], :name => "index_discipline_classes_on_matrix_discipline_id"
  add_index "discipline_classes", ["school_class_id"], :name => "index_discipline_classes_on_school_class_id"

  create_table "discipline_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.text     "goals"
    t.integer  "workload"
    t.integer  "credits"
    t.integer  "discipline_type_id"
    t.integer  "course_id"
    t.integer  "dept_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "disciplines", ["course_id"], :name => "index_disciplines_on_course_id"
  add_index "disciplines", ["dept_id"], :name => "index_disciplines_on_dept_id"
  add_index "disciplines", ["discipline_type_id"], :name => "index_disciplines_on_discipline_type_id"

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

  create_table "equipament_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "gender"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "knowledge_areas", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "learning_modalities", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matrices", :force => true do |t|
    t.date     "started_at"
    t.date     "ended_at"
    t.integer  "maxdisciplines"
    t.integer  "maxseasons"
    t.integer  "course_id"
    t.integer  "matrix_evaluation_type_id"
    t.integer  "matrix_status_id"
    t.integer  "class_season_type_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "matrices", ["class_season_type_id"], :name => "index_matrices_on_class_season_type_id"
  add_index "matrices", ["course_id"], :name => "index_matrices_on_course_id"
  add_index "matrices", ["matrix_evaluation_type_id"], :name => "index_matrices_on_matrix_evaluation_type_id"
  add_index "matrices", ["matrix_status_id"], :name => "index_matrices_on_matrix_status_id"

  create_table "matrix_discipline_groups", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "matrix_disciplines", :force => true do |t|
    t.integer  "matrix_id"
    t.integer  "discipline_id"
    t.integer  "matrix_discipline_group_id"
    t.integer  "maxseasons"
    t.boolean  "isoptative"
    t.boolean  "isdependence"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "matrix_disciplines", ["discipline_id"], :name => "index_matrix_disciplines_on_discipline_id"
  add_index "matrix_disciplines", ["matrix_discipline_group_id"], :name => "index_matrix_disciplines_on_matrix_discipline_group_id"
  add_index "matrix_disciplines", ["matrix_id"], :name => "index_matrix_disciplines_on_matrix_id"

  create_table "matrix_evaluation_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "matrix_statuses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "person_addresses", :force => true do |t|
    t.integer  "street_type_id"
    t.integer  "city_id"
    t.string   "street_name"
    t.string   "complement"
    t.string   "post_office_box"
    t.string   "neighborhood"
    t.integer  "zip_code"
    t.string   "number"
    t.integer  "provenance_area_id"
    t.integer  "person_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "person_addresses", ["city_id"], :name => "index_person_addresses_on_city_id"
  add_index "person_addresses", ["person_id"], :name => "index_person_addresses_on_person_id"
  add_index "person_addresses", ["provenance_area_id"], :name => "index_person_addresses_on_provenance_area_id"
  add_index "person_addresses", ["street_type_id"], :name => "index_person_addresses_on_street_type_id"

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

  create_table "provenance_areas", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "race"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registration_schemes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "school_classes", :force => true do |t|
    t.string   "identifier"
    t.integer  "period"
    t.integer  "matrix_id"
    t.integer  "class_season_id"
    t.integer  "shift_type_id"
    t.date     "opening_at"
    t.date     "closing_at"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "school_classes", ["class_season_id"], :name => "index_school_classes_on_class_season_id"
  add_index "school_classes", ["matrix_id"], :name => "index_school_classes_on_matrix_id"
  add_index "school_classes", ["shift_type_id"], :name => "index_school_classes_on_shift_type_id"

  create_table "shift_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "situation_teaching_equipaments", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "street_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teaching_equipaments", :force => true do |t|
    t.string   "description"
    t.date     "arrival_date"
    t.integer  "equipament_type_id"
    t.integer  "situation_teaching_equipament_id"
    t.integer  "dept_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "teaching_equipaments", ["dept_id"], :name => "index_teaching_equipaments_on_dept_id"
  add_index "teaching_equipaments", ["equipament_type_id"], :name => "index_teaching_equipaments_on_equipament_type_id"
  add_index "teaching_equipaments", ["situation_teaching_equipament_id"], :name => "index_teaching_equipaments_on_situation_teaching_equipament_id"

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
