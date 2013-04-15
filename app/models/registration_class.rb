class RegistrationClass < ActiveRecord::Base
  belongs_to :registration
  belongs_to :discipline_class
  belongs_to :registration_class_status
  has_many :class_record_presences
  has_many :discipline_class_exam_results
  attr_accessible :registered_at, :discipline_class_id, :registration_class_status_id, :registration_id, :endnote_council_class
  before_destroy :has_children?
  validates :registered_at, :discipline_class_id, :registration_class_status_id, :registration_id, :presence => true
  validates_uniqueness_of :registration_id, :scope => :discipline_class_id, :message => "já possui esta matrícula associada a classe."
  
  # nome da disciplina
  def discipline_name
    self.discipline_class.try(:discipline_name)
  end
  
  # código da turma
  def school_class_identifier
    self.discipline_class.try(:school_class_identifier)
  end

  # período
  def school_class_period
    self.discipline_class.try(:school_class_period)
  end  
  
  # nome do aluno
  def student_name
    self.registration.person.try(:name)
  end  
  
  # id do aluno
  def student_id
    self.registration.person.try(:id)
  end 
  
  # nome do aluno sem acentos
  def model_student_name_whitout_accents
    self.registration.person.try(:name).removeaccents
  end
    
  # matrícula
  def student_registration_number
    self.registration.registration_number
  end
  
  #Calcula a média do aluno naquela classe (Turma+Disciplina)
  def model_student_result_average
      avg = 0.0
      sum_results = 0.0
      sum_weights = 0.0
      self.discipline_class_exam_results.each do |exam_result|
         # sum_results += (exam_result.result * exam_result.discipline_class_exam.weight)  
         # sum_weights += exam_result.discipline_class_exam.weight
        !exam_result.result.nil? ? "" : exam_result.result = 0
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
    fq = ("%0.2f"  % ((is_present_count.to_f / class_records_count.to_f) ))
   end if
   fq
  end
  
  #Retorna um vetor com as situações prevista do aluno conforme aplicação das regras acadêmicas regra acadêmica
  def registration_class_status_situations
    if self.discipline_class.school_class.course_matrix.course_matrix_academic_rules.count <= 0
      return "sem regra"
    end
    situations = []
    self.discipline_class.school_class.course_matrix.course_matrix_academic_rules.each do |rules|
      #Frequencia
      if rules.academic_rule.academic_rule_type.id == 1
        do_logical_operation(rules.academic_rule.operator, (self.frequency.to_f).to_s, (rules.academic_rule.value.to_f/100).to_s) ? situations.push(RegistrationClassStatus.find(rules.academic_rule.rclass_status_true)) : situations.push(RegistrationClassStatus.find(rules.academic_rule.rclass_status_false))    
      #Nota
      elsif rules.academic_rule.academic_rule_type.id == 2
        do_logical_operation(rules.academic_rule.operator, (self.model_student_result_average.to_f).to_s, (rules.academic_rule.value/10).to_s) ? situations.push(RegistrationClassStatus.find(rules.academic_rule.rclass_status_true)) : situations.push(RegistrationClassStatus.find(rules.academic_rule.rclass_status_false))    
      end
      
    end
    situations
  end
  
  #Retorna a situação final do aluno
  def registration_class_status_final
    situations = self.registration_class_status_situations
   situations.each do |s|
     if !s.is_approved
       return s #Possui uma regra que o reprovou
     end
   end
   situations[0] #Aprovado em todas as regras
  end
  
  # Sigla da situação
  def acronym_status_rules
    self.registration_class_status_final.acronym
  end
  
  private
  def has_children?
    errors.add(:base, "Existem Presenças associadas a esta Matrícula") unless class_record_presences.count == 0
    errors.add(:base, "Existem Avaliações associadas a esta Matrícula") unless discipline_class_exam_results.count == 0  
    if errors.size > 0
     false
    else
     true
    end
    
  end  
  
  def do_logical_operation(operator, value_one, value_two)
     eval(value_one + operator + value_two)
  end  
    
end
