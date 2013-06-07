class EducationModality < ActiveRecord::Base
  belongs_to :education_step
  has_many :academic_rules
  attr_accessible :description, :education_step, :education_step_id
end
