class Course < ActiveRecord::Base
  belongs_to :dept
  belongs_to :registration_scheme
  belongs_to :class_season_type
  belongs_to :learning_modality
  belongs_to :knowledge_area
  belongs_to :techaxis, :foreign_key => :techaxes_id
  belongs_to :education_modality
  belongs_to :course_status
  has_many :disciplines
  has_many :course_matrices
  attr_accessible :code, :ended_at, :goal, :maxtime, :mintime, :name, :nickname, :started_at, :dept, :authorization_code, :techaxes_id, :learning_modality_id, :education_modality_id, :class_season_type_id, :knowledge_area_id, :dept_id, :registration_scheme_id, :course_status_id
  before_destroy :has_children?
  
  validates_presence_of :dept_id, :started_at
  
  validate :ended_at_date
  
  def ended_at_date
    if self.ended_at
       errors.add(:base, "Data de encerramento nao pode ser menor que a data de abertura") unless self.ended_at >= self.started_at
    end
  end
  
  def dept_acronym
    "#{self.dept.try(:acronym)}"
  end

  def dept_name
    Dept.find(self.dept_id).name
  end
  
  def started_at_formatted
    self.started_at.strftime("%d/%m/%Y")
  end
  
  def modality
    self.education_modality
  end
     
  def dept_institute_course
    self.dept.dept_institute
  end
   
  searchable do
    text :code, :name, :nickname, :dept_acronym, :dept_name
    
  end
  
  def has_children?
    errors.add(:base, "Existem Disciplinas associadas a este Curso") unless disciplines.count == 0
    errors.add(:base, "Existem Matrizes associadas a este Curso") unless course_matrices.count == 0  
   
    if errors.size > 0
     false
    else
     true
    end    
  end
  
end
