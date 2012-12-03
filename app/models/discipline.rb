class Discipline < ActiveRecord::Base
  belongs_to :discipline_type
  belongs_to :course
  attr_accessible :code, :credits, :description, :goals, :name, :workload, :discipline_type_id, :course_id, :discipline_type_id
  default_scope :order => :name
  
  validates_presence_of :name, :course_id, :discipline_type_id
  
end
