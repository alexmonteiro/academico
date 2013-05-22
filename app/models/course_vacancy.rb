class CourseVacancy < ActiveRecord::Base
  belongs_to :course
  belongs_to :class_season
  belongs_to :shift_type
  attr_accessible :number_vacancies, :course_id, :class_season_id, :shift_type_id
  
  validates :number_vacancies, :numericality => { :only_integer => true }
end
