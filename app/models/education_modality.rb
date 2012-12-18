class EducationModality < ActiveRecord::Base
  belongs_to :education_step
  attr_accessible :description, :education_step, :education_step_id
end
