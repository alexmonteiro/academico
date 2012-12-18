class RegistrationClass < ActiveRecord::Base
  belongs_to :registration
  belongs_to :discipline_class
  belongs_to :registration_class_status
  has_many :class_record_presences
  has_many :discipline_class_exam_results
  attr_accessible :registered_at, :discipline_class_id, :registration_class_status_id, :registration_id
  before_destroy :has_children?
  validates_uniqueness_of :discipline_class_id, :scope => :registration_id, :message => "já possui esta matrícula associada a classe."
  
  def discipline_name
    self.discipline_class.try(:discipline_name)
  end
  
  def school_class_identifier
    self.discipline_class.try(:school_class_identifier)
  end

  def school_class_period
    self.discipline_class.try(:school_class_period)
  end  
  
  def student_name
    self.registration.person.try(:name)
  end  
  
  def student_id
    self.registration.person.try(:id)
  end 
  
  def model_student_name_whitout_accents
    self.registration.person.try(:name).removeaccents
  end
    
  def student_registration_number
    self.registration.registration_number
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
    #somatório dos pesos é independete do resultado pois pode haver avaliações sem notas lançadas
    #self.discipline_class.discipline_class_exams.each do |exam|
    #   sum_weights += exam.weight
    #end
    
    
    if sum_weights > 0
     avg = (sum_results/sum_weights)
    end
    return avg
  end
  
  #Calcula quantidade de presencas
  def is_present_count
    self.class_record_presences.where(:is_present => true).count
  end
  
  #Calcula quantidade de aulas
  def class_records_count
    self.discipline_class.class_records.count
  end
  
  #Total de Faltas
  def is_ausent_count
    self.class_record_presences.where(:is_present => false).count
  end
  
  #Porcentagens de Faltas
  def is_ausent_percent
    ap = ((self.is_ausent_count.to_f / self.class_records_count.to_f) * Float(100))
    ap.round(2)
  end
  
  #Calcula frequencia
  def frequency
   fq = '0.0'
   if class_records_count > 0  
    fq = ("%0.2f"  % ((is_present_count.to_f / class_records_count.to_f) * Float(100)))
   end if
   fq
  end
  
  def has_children?
    errors.add(:base, "Existem Presenças associadas a esta Matrícula") unless class_record_presences.count == 0
    errors.add(:base, "Existem Avaliações associadas a esta Matrícula") unless discipline_class_exam_results.count == 0  
    if errors.size > 0
     false
    else
     true
    end
    
  end  
end
