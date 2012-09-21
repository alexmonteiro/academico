class Timetable < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => :matrix_id
  belongs_to :day_week
  has_many :timetable_class_times
  
  attr_accessible :matrix_id, :day_week_id
  
  validates_uniqueness_of :matrix_id, :scope => :day_week_id, :message => "já possui este dia/matriz cadastrado."
end
