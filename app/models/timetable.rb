class Timetable < ActiveRecord::Base
  belongs_to :matrix
  belongs_to :day_week
  has_many :timetable_class_times
  
  attr_accessible :matrix_id, :day_week_id
  
  validates_uniqueness_of :matrix_id, :scope => :day_week_id, :message => "já possui este dia/matriz cadastrado."
end
