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

  def model_student_name_whitout_accents
    self.person.try(:name).removeaccents
  end  

  def registration_status_description
    self.registration_status.try(:description)
  end
  
  def course_name
    self.course_matrix.try(:course_name)
  end

  searchable do
    text :id, :registration_number, :student_name, :registration_status_description, :course_name
    
  end
  
=begin
  Matrícula: AAAAPUUCCCSSS-V
  Exemplo: 2011201003009-8
  Onde: 
  AAAA – Ano da matrícula do aluno na Instituição, no caso 2011.
  P – Período de ingresso do aluno na Instituição, no caso 2ª semestre.
  UU - Unidade de Ensino (Campus)
  CCC – Código do curso
  SSS – É um número Sequencial que representa o número posterior ao último aluno incluído na 
  matrícula do curso e sem limite.
  V - Dígito verificador. O cálculo a ser feito deverá ser da 
  mesma maneira como é gerado o DV do CPF.
  Formato final: AAAAPUUCCCSSS-V
=end
  #generate registration_number   
  def generate_registration_number       
    aaaa = Date.today.year.to_s
    p    = (Date.today.month > 6 ? 2 : 1).to_s 
    uu   = self.course_matrix.course.dept.id.to_s.rjust(2, '0')
    ccc  = self.course_matrix.course.id.to_s.rjust(3, '0')
    sss  = (Registration.where('registration_number like ?',(aaaa + p + uu + ccc + "%")).count+1).to_s.rjust(3, '0')
    #TODO cálculo do DV
    v    = calculate_v(aaaa + p + uu + ccc + sss)
    
    aaaa + p + uu + ccc + sss + '-' + v
  end
  
  #calcula dv - Módulo 11
  def calculate_v(registration_number)
    array_number = registration_number.split(//)
    v = 0    
    array_number.each_with_index do |n, i|
      v += n.to_i * ((array_number.length.to_i+1) - i).to_i
    end    
    v = 11 - (v%11)
    v = 0 if v >= 10

    v.to_s
  end
  
end
