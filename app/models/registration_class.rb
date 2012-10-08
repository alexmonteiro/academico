class RegistrationClass < ActiveRecord::Base
  belongs_to :registration
  belongs_to :discipline_class
  belongs_to :registration_class_status
  has_many :class_record_presences
  has_many :discipline_class_exam_results
  attr_accessible :registered_at, :discipline_class_id, :registration_class_status_id, :registration_id
  
  
  def school_class_identifier
    self.discipline_class.try(:school_class_code)
  end
  
  def model_student_name
    self.registration.person.try(:name)
  end
  
  def model_student_name_whitout_accents
    self.registration.person.try(:name).removeaccents
  end
  
  #Calcula a média do aluno naquela classe (Turma+Disciplina)
  def model_student_result_average
    avg = 0.0
    sum_results = 0.0
    sum_weights = 0.0
    self.discipline_class_exam_results.each do |exam_result|
       sum_results += (exam_result.result * exam_result.discipline_class_exam.weight)
       sum_weights += exam_result.discipline_class_exam.weight
    end
    if sum_weights > 0
     avg = (sum_results/sum_weights)
    end
    return avg
  end
  
end
