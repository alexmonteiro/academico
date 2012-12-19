class DisciplineClassExamResult < ActiveRecord::Base
  belongs_to :registration_class
  belongs_to :discipline_class_exam
  attr_accessible :concept, :result, :discipline_class_exam_id, :registration_class_id
  
  validates :result, :numericality => { :greater_than_or_equal_to => 0.0}, :presence => true
  
  
  def model_student_name
    self.registration_class.registration.person.try(:name)
  end
  
  def model_student_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end
  
  def student_id
    self.registration_class.registration.person.try(:id)
  end
  
end
