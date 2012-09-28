class Registration < ActiveRecord::Base
  belongs_to :course_matrix
  belongs_to :person
  belongs_to :registration_status
  has_many :registration_classes
  attr_accessible :registration_number, :course_matrix_id, :registration_at, :registration_status_id, :person_id
  default_scope :order => "registration_at DESC"
  

  def student_name
    self.person.try(:name)
  end

  def registration_status_description
    self.registration_status.try(:description)
  end
  
  def course_name
    self.course_matrix.try(:course_name)
  end

  searchable do
    text :registration_number, :student_name, :registration_status_description, :course_name
    
  end
end
