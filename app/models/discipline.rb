class Discipline < ActiveRecord::Base
  belongs_to :discipline_type
  belongs_to :course
  belongs_to :dept
  attr_accessible :code, :credits, :description, :goals, :name, :workload, :discipline_type, :course, :dept
end
