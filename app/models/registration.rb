include ActionView::Helpers::UrlHelper
class Registration < ActiveRecord::Base
  belongs_to :course_matrix
  belongs_to :person
  belongs_to :registration_status
  belongs_to :precedence_school
  belongs_to :ways_of_admission
  has_many :registration_classes
  has_many :registration_admission_types, :dependent => :destroy
  has_many :admission_types, :through => :registration_admission_types
  attr_accessible :registration_number, :course_matrix_id, :registration_at, :registration_status_id, :person_id, :admission_type_ids, :ways_of_admission_id,
                  :family_income, :how_many_live, :have_work, :occupation, :workplace,
                  :responsible_complete_name, :responsible_cpf, :responsible_kinship, :responsible_address, :responsible_cep, :responsible_have_work, :responsible_occupation, :responsible_workplace, :responsible_workphone, :responsible_telephone, :responsible_schooling,
                  :presents_special_need, :special_need_description, :presents_health_problem, :health_problem_description,
                  :precedence_school_id, :parent_institution, :year_completion, :is_attending_scholl_level, :attending_scholl_level_description, :dont_take_another_vacance_public_institution, :dont_take_another_prouni_vacance_public_institution
                  

                  
  default_scope :order => "registration_at DESC"
  #before_save :set_registration_number
  
  validates_presence_of :person_id, :course_matrix_id, :registration_status_id, :admission_type_ids
  validates_uniqueness_of :person_id, :scope => :course_matrix_id, :message => "já matriculado neste curso pela matrícula: #{@course_matrix_id}."

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
