class Course < ActiveRecord::Base
  belongs_to :dept
  belongs_to :registration_scheme
  belongs_to :class_season_type
  belongs_to :learning_modality
  belongs_to :knowledge_area
  belongs_to :techaxes
  belongs_to :education_modality
  has_many :disciplines
  attr_accessible :code, :ended_at, :goal, :maxtime, :mintime, :name, :nickname, :started_at, :dept, :techaxes_id, :learning_modality_id, :education_modality_id, :class_season_type_id, :knowledge_area_id, :dept_id, :registration_scheme_id
end
