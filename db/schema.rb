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

ActiveRecord::Schema.define(:version => 20130607181404) do

  create_table "academic_rule_types", :force => true do |t|
    t.string   "rule"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "academic_rules", :force => true do |t|
    t.integer  "academic_rule_type_id"
    t.string   "operator"
    t.integer  "value"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "rclass_status_true_id"
    t.integer  "rclass_status_false_id"
    t.integer  "education_modality_id"
  end

  add_index "academic_rules", ["academic_rule_type_id"], :name => "index_academic_rules_on_academic_rule_type_id"
  add_index "academic_rules", ["education_modality_id"], :name => "index_academic_rules_on_education_modality_id"

  create_table "admission_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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

  create_table "class_record_presences", :force => true do |t|
    t.integer  "class_record_id"
    t.integer  "registration_class_id"
    t.boolean  "is_present",            :default => true
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  add_index "class_record_presences", ["class_record_id"], :name => "index_class_record_presences_on_class_record_id"
  add_index "class_record_presences", ["registration_class_id"], :name => "index_class_record_presences_on_registration_class_id"

  create_table "class_record_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "class_records", :force => true do |t|
    t.date     "recorded_at"
    t.text     "record"
    t.text     "note"
    t.text     "justification"
    t.integer  "discipline_class_id"
    t.integer  "class_time_id"
    t.integer  "class_record_type_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "user_id"
  end

  add_index "class_records", ["class_record_type_id"], :name => "index_class_records_on_class_record_type_id"
  add_index "class_records", ["class_time_id"], :name => "index_class_records_on_class_time_id"
  add_index "class_records", ["discipline_class_id"], :name => "index_class_records_on_discipline_class_id"
  add_index "class_records", ["user_id"], :name => "index_class_records_on_user_id"

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

  create_table "class_student_statuses", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "class_teachings", :force => true do |t|
    t.integer  "discipline_class_id"
    t.integer  "dept_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "user_id"
  end

  add_index "class_teachings", ["dept_id"], :name => "index_class_teachings_on_dept_id"
  add_index "class_teachings", ["discipline_class_id"], :name => "index_class_teachings_on_discipline_class_id"
  add_index "class_teachings", ["user_id"], :name => "index_class_teachings_on_user_id"

  create_table "class_times", :force => true do |t|
    t.string   "started_at"
    t.string   "ended_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "nationality"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "course_matrices", :force => true do |t|
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

  add_index "course_matrices", ["class_season_type_id"], :name => "index_course_matrices_on_class_season_type_id"
  add_index "course_matrices", ["course_id"], :name => "index_course_matrices_on_course_id"
  add_index "course_matrices", ["matrix_evaluation_type_id"], :name => "index_course_matrices_on_matrix_evaluation_type_id"
  add_index "course_matrices", ["matrix_status_id"], :name => "index_course_matrices_on_matrix_status_id"

  create_table "course_matrix_academic_rules", :force => true do |t|
    t.integer  "course_matrix_id"
    t.integer  "academic_rule_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "course_matrix_academic_rules", ["academic_rule_id"], :name => "index_course_matrix_academic_rules_on_academic_rule_id"
  add_index "course_matrix_academic_rules", ["course_matrix_id"], :name => "index_course_matrix_academic_rules_on_course_matrix_id"

  create_table "course_statuses", :force => true do |t|
    t.string   "description"
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
    t.text     "goal"
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
    t.integer  "course_status_id"
    t.string   "authorization_code"
  end

  add_index "courses", ["class_season_type_id"], :name => "index_courses_on_class_season_type_id"
  add_index "courses", ["course_status_id"], :name => "index_courses_on_course_status_id"
  add_index "courses", ["dept_id"], :name => "index_courses_on_dept_id"
  add_index "courses", ["education_modality_id"], :name => "index_courses_on_education_modality_id"
  add_index "courses", ["knowledge_area_id"], :name => "index_courses_on_knowledge_area_id"
  add_index "courses", ["learning_modality_id"], :name => "index_courses_on_learning_modality_id"
  add_index "courses", ["registration_scheme_id"], :name => "index_courses_on_registration_scheme_id"
  add_index "courses", ["techaxes_id"], :name => "index_courses_on_techaxes_id"

  create_table "day_weeks", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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
    t.string   "code_number"
  end

  add_index "depts", ["dept_id"], :name => "index_depts_on_dept_id"
  add_index "depts", ["dept_type_id"], :name => "index_depts_on_dept_type_id"

  create_table "discipline_class_exam_results", :force => true do |t|
    t.integer  "registration_class_id"
    t.integer  "discipline_class_exam_id"
    t.string   "concept"
    t.decimal  "result"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "discipline_class_exam_results", ["discipline_class_exam_id"], :name => "index_discipline_class_exam_results_on_discipline_class_exam_id"
  add_index "discipline_class_exam_results", ["registration_class_id"], :name => "index_discipline_class_exam_results_on_registration_class_id"

  create_table "discipline_class_exam_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "discipline_class_exams", :force => true do |t|
    t.date     "applied_at"
    t.string   "title"
    t.decimal  "weight"
    t.decimal  "real_value"
    t.integer  "discipline_class_id"
    t.integer  "discipline_class_exam_type_id"
    t.boolean  "is_mandatory"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "discipline_class_exams", ["discipline_class_exam_type_id"], :name => "index_discipline_class_exams_on_discipline_class_exam_type_id"
  add_index "discipline_class_exams", ["discipline_class_id"], :name => "index_discipline_class_exams_on_discipline_class_id"

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
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "disciplines", ["course_id"], :name => "index_disciplines_on_course_id"
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

  create_table "issuing_institutions", :force => true do |t|
    t.string   "description"
    t.string   "acronym"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "matrix_discipline_groups", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "matrix_discipline_prerequisites", :force => true do |t|
    t.integer  "matrix_discipline_id"
    t.integer  "pre_matrix_discipline_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "matrix_discipline_prerequisites", ["matrix_discipline_id"], :name => "index_matrix_discipline_prerequisites_on_matrix_discipline_id"

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

  create_table "military_document_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.date     "birth_date"
    t.string   "father_name"
    t.string   "mom_name"
    t.string   "email"
    t.string   "lattes_url"
    t.integer  "gender_id"
    t.integer  "education_degree_id"
    t.integer  "race_id"
    t.integer  "marital_status_id"
    t.integer  "blood_type_id"
    t.integer  "city_id"
    t.integer  "number_children"
    t.boolean  "isemployee"
    t.boolean  "isstudent"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "person_type_id"
  end

  add_index "people", ["blood_type_id"], :name => "index_people_on_blood_type_id"
  add_index "people", ["city_id"], :name => "index_people_on_city_id"
  add_index "people", ["education_degree_id"], :name => "index_people_on_education_degree_id"
  add_index "people", ["gender_id"], :name => "index_people_on_gender_id"
  add_index "people", ["marital_status_id"], :name => "index_people_on_marital_status_id"
  add_index "people", ["race_id"], :name => "index_people_on_race_id"

  create_table "people_telephones", :force => true do |t|
    t.integer  "telephone_type_id"
    t.integer  "person_id"
    t.integer  "area_code"
    t.integer  "number"
    t.integer  "branch"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "people_telephones", ["person_id"], :name => "index_people_telephones_on_people_id"
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

  create_table "person_identification_docs", :force => true do |t|
    t.integer  "person_id"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "rg_issuing_institution"
    t.date     "rg_date_issuance"
    t.integer  "rg_uf"
    t.string   "birth_certificate"
    t.string   "bc_notarys_office"
    t.string   "bc_book"
    t.string   "bc_sheet"
    t.date     "bc_date_issuance"
    t.string   "ctps"
    t.string   "ctps_series"
    t.string   "pis_pasep"
    t.string   "cnh"
    t.date     "cnh_date_issuance"
    t.string   "military_document"
    t.integer  "military_document_type_id"
    t.string   "military_document_region"
    t.string   "voter_registration"
    t.string   "vr_zone"
    t.string   "vr_section"
    t.integer  "vr_uf"
    t.date     "vr_date_issuance"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.date     "cnh_expiration_date"
  end

  add_index "person_identification_docs", ["military_document_type_id"], :name => "index_person_identification_docs_on_military_document_type_id"
  add_index "person_identification_docs", ["person_id"], :name => "index_person_identification_docs_on_person_id"
  add_index "person_identification_docs", ["rg_issuing_institution"], :name => "index_person_identification_docs_on_rg_issuing_institution"
  add_index "person_identification_docs", ["rg_uf"], :name => "index_person_identification_docs_on_rg_uf"
  add_index "person_identification_docs", ["vr_uf"], :name => "index_person_identification_docs_on_vr_uf"

  create_table "person_person_type_depts", :force => true do |t|
    t.integer  "person_person_type_id"
    t.integer  "dept_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "person_person_type_depts", ["dept_id"], :name => "index_person_person_type_depts_on_dept_id"
  add_index "person_person_type_depts", ["person_person_type_id"], :name => "index_person_person_type_depts_on_person_person_type_id"

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

  create_table "precedence_schools", :force => true do |t|
    t.text     "description"
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

  create_table "registration_admission_types", :force => true do |t|
    t.integer  "registration_id"
    t.integer  "admission_type_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "registration_admission_types", ["admission_type_id"], :name => "index_registration_admission_types_on_admission_type_id"
  add_index "registration_admission_types", ["registration_id"], :name => "index_registration_admission_types_on_registration_id"

  create_table "registration_class_statuses", :force => true do |t|
    t.string   "description"
    t.boolean  "is_approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "acronym"
  end

  create_table "registration_classes", :force => true do |t|
    t.integer  "registration_id"
    t.integer  "discipline_class_id"
    t.date     "registered_at"
    t.integer  "registration_class_status_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.decimal  "endnote_council_class"
  end

  add_index "registration_classes", ["discipline_class_id"], :name => "index_registration_classes_on_discipline_class_id"
  add_index "registration_classes", ["registration_class_status_id"], :name => "index_registration_classes_on_registration_class_status_id"
  add_index "registration_classes", ["registration_id"], :name => "index_registration_classes_on_registration_id"

  create_table "registration_healths", :force => true do |t|
    t.boolean  "presents_special_need"
    t.text     "special_need_description"
    t.boolean  "presents_health_problem"
    t.text     "health_problem_description"
    t.integer  "registration_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "registration_healths", ["registration_id"], :name => "index_registration_healths_on_registration_id"

  create_table "registration_schemes", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "registration_statuses", :force => true do |t|
    t.string   "description"
    t.boolean  "is_attending", :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "registrations", :force => true do |t|
    t.date     "registration_at"
    t.integer  "course_matrix_id"
    t.integer  "person_id"
    t.string   "registration_number"
    t.integer  "registration_status_id"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "family_income"
    t.integer  "how_many_live"
    t.boolean  "have_work"
    t.string   "occupation"
    t.string   "workplace"
    t.string   "responsible_complete_name"
    t.string   "responsible_cpf"
    t.string   "responsible_kinship"
    t.text     "responsible_address"
    t.string   "responsible_cep"
    t.boolean  "responsible_have_work"
    t.string   "responsible_occupation"
    t.string   "responsible_workplace"
    t.string   "responsible_workphone"
    t.string   "responsible_telephone"
    t.string   "responsible_schooling"
    t.boolean  "presents_special_need"
    t.text     "special_need_description"
    t.boolean  "presents_health_problem"
    t.text     "health_problem_description"
    t.integer  "precedence_school_id"
    t.string   "parent_institution"
    t.string   "year_completion"
    t.boolean  "is_attending_scholl_level"
    t.text     "attending_scholl_level_description"
    t.boolean  "dont_take_another_vacance_public_institution"
    t.boolean  "dont_take_another_prouni_vacance_public_institution"
    t.integer  "ways_of_admission_id"
    t.string   "responsible_email"
  end

  add_index "registrations", ["course_matrix_id"], :name => "index_registrations_on_course_matrix_id"
  add_index "registrations", ["person_id"], :name => "index_registrations_on_person_id"
  add_index "registrations", ["precedence_school_id"], :name => "index_registrations_on_precedence_school_id"
  add_index "registrations", ["registration_status_id"], :name => "index_registrations_on_registration_status_id"
  add_index "registrations", ["ways_of_admission_id"], :name => "index_registrations_on_ways_of_admission_id"

  create_table "registrations_responsibles", :force => true do |t|
    t.string   "complete_name"
    t.string   "cpf"
    t.string   "kinship"
    t.text     "address"
    t.string   "cep"
    t.boolean  "have_work"
    t.string   "occupation"
    t.string   "workplace"
    t.string   "workphonr"
    t.string   "telephone"
    t.string   "schooling"
    t.string   "email"
    t.integer  "registration_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "registrations_responsibles", ["registration_id"], :name => "index_registrations_responsibles_on_registration_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

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

  create_table "schooling_registrations", :force => true do |t|
    t.string   "parent_institution"
    t.string   "year_completion"
    t.boolean  "is_attending_school_level"
    t.string   "attending_school_level_description"
    t.boolean  "dont_take_another_vacance_public_institution"
    t.boolean  "dont_take_another_prouni_vacance_public_institution"
    t.integer  "registration_id"
    t.integer  "precedence_school_id"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  add_index "schooling_registrations", ["precedence_school_id"], :name => "index_schooling_registrations_on_precedence_school_id"
  add_index "schooling_registrations", ["registration_id"], :name => "index_schooling_registrations_on_registration_id"

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
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "timetable_class_times", :force => true do |t|
    t.integer  "timetable_id"
    t.integer  "class_time_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "timetable_class_times", ["class_time_id"], :name => "index_timetable_class_times_on_class_time_id"
  add_index "timetable_class_times", ["timetable_id"], :name => "index_timetable_class_times_on_timetable_id"

  create_table "timetables", :force => true do |t|
    t.integer  "matrix_id"
    t.integer  "day_week_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "timetables", ["day_week_id"], :name => "index_timetables_on_day_week_id"
  add_index "timetables", ["matrix_id"], :name => "index_timetables_on_matrix_id"

  create_table "users", :force => true do |t|
    t.string   "userlogin",              :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "displayname"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true
  add_index "users", ["userlogin"], :name => "index_users_on_userlogin", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "ways_of_admissions", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
