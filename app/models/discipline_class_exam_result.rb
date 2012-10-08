class DisciplineClassExamResult < ActiveRecord::Base
  belongs_to :registration_class
  belongs_to :discipline_class_exam
  attr_accessible :concept, :result, :discipline_class_exam_id, :registration_class_id
  
  
  def model_student_name
    self.registration_class.registration.person.try(:name)
  end
  
  def model_student_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end
  
end
