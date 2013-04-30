class Discipline < ActiveRecord::Base
  belongs_to :discipline_type
  belongs_to :course
  has_many :matrix_disciplines
  attr_accessible :code, :credits, :description, :goals, :name, :workload, :discipline_type_id, :course_id, :discipline_type_id
  default_scope :order => :name
  before_destroy :has_children?
  
  validates_presence_of :name, :course_id, :discipline_type_id, :workload
  


private
  def has_children?
    errors.add(:base, "Existem Matrizes associadas a esta Disciplina") unless matrix_disciplines.count == 0
   
    if errors.size > 0
     false
    else
     true
    end
  end
  
end
