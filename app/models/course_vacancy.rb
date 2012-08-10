class CourseVacancy < ActiveRecord::Base
  belongs_to :course
  belongs_to :class_season
  belongs_to :shift_type
  attr_accessible :number_vacancies
end
