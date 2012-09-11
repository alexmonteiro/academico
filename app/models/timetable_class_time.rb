class TimetableClassTime < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :class_time
  attr_accessible :timetable_id, :class_time_id
  
  validates_uniqueness_of :timetable_id, :scope => :class_time_id, :message => "já possui esta grade/horário cadastrado."
end
