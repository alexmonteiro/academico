class EducationStep < ActiveRecord::Base
  belongs_to :education_level
  attr_accessible :description, :education_level
end
