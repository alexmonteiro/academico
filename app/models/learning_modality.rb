class LearningModality < ActiveRecord::Base
  has_many :courses
  attr_accessible :description
  validates :description, :presence => true
  validates :description, :uniqueness => true
  before_destroy :has_children?
  
  
  def has_children?
    errors.add(:base, "Existem Cursos associadas a esta Modalidade") unless courses.count == 0  
   
    if errors.size > 0
     false
    else
     true
    end    
  end
  
end
