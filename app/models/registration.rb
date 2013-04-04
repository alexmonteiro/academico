include ActionView::Helpers::UrlHelper
class Registration < ActiveRecord::Base
  belongs_to :course_matrix
  belongs_to :person
  belongs_to :registration_status
  has_many :registration_classes
  attr_accessible :registration_number, :course_matrix_id, :registration_at, :registration_status_id, :person_id
  default_scope :order => "registration_at DESC"
  #before_save :set_registration_number
  
  validates_presence_of :person_id, :course_matrix_id, :registration_status_id
  #validates_uniqueness_of :person_id, :scope => :course_matrix_id, :message => "já matriculado neste curso pela matrícula: #{@course_matrix_id}."
  
  validate :validates_uniqueness_of
  
  def validates_uniqueness_of
    reg = Registration.find_by_person_id_and_course_matrix_id(self.person_id, self.course_matrix_id)
    errors.add(:base, "Aluno já vinculado a este curso pela matrícula: #{(link_to reg.registration_number, 'matriculas/'+reg.id.to_s )}") unless !reg
  end

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
  Matrícula: AASUUCCCSSSS
  Exemplo: 101010010001
  Onde: 
  AA – Dois últimos do ano da matrícula do aluno na Instituição, no caso 2012 = 12.
  S – Semestre
  UU - Unidade de Ensino (Campus)
  CCC – Código do curso (Campo codigo preenchido manualmente pelo coordenador dos cursos)
  SSSS – É um número Sequencial que representa o número posterior ao último aluno incluído na 
  matrícula do curso e sem limite.

  Formato final: AASUUCCCSSSS
=end

  #generate registration_number   
  def generate_registration_number       
    aa = Date.today.year.to_s[2..4]
    s    = (Date.today.month > 6 ? 2 : 1).to_s 
    uu   = self.course_matrix.course.dept.code_number.to_s.rjust(2, '0')
    ccc  = self.course_matrix.course.code.rjust(3, '0')
    ssss  = (Registration.where('registration_number like ?',(aa + s + uu + ccc + "%")).count+1).to_s.rjust(4, '0')
    
    aa + s + uu + ccc + ssss
  end
  
    
  def set_registration_number
    self.registration_number = generate_registration_number
  end
    
end
