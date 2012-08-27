class Discipline < ActiveRecord::Base
  belongs_to :discipline_type
  belongs_to :course
  belongs_to :dept
  attr_accessible :code, :credits, :description, :goals, :name, :workload, :discipline_type, :course, :dept, :dept_id, :course_id, :discipline_type_id  
  
  validates_presence_of :name, :course_id, :discipline_type_id, :dept_id
  
end
