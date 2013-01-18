class CourseMatrix < ActiveRecord::Base
  belongs_to :course
  belongs_to :matrix_evaluation_type
  belongs_to :matrix_status
  belongs_to :class_season_type
  has_many :matrix_disciplines, :foreign_key => :matrix_id
  has_many :timetables, :foreign_key => :matrix_id
  has_many :school_classes, :foreign_key => :matrix_id
  has_many :course_matrix_academic_rules
  before_destroy :has_children?
  attr_accessible :ended_at, :maxdisciplines, :maxseasons, :started_at, :class_season_type_id, :matrix_status_id, :matrix_evaluation_type_id, :course_id
  default_scope :order => "id DESC"
  
  validates :started_at, :class_season_type_id, :matrix_status_id, :matrix_evaluation_type_id,  :course_id, :presence => true

  def model_custom_name
      self.id.to_s+' - Matriz ' + self.started_at.strftime('%d/%m/%Y') + ' - '+ self.course.try(:name)
  end  

  def model_id_and_course_name
      'Matriz: ' + self.id.to_s+' - ' +self.course.try(:name)
  end  
  
  def matrix_status_desc
    self.matrix_status.description
  end
  
  # Id e data de vigência da matriz curricular
  def matriz_name
    self.id.to_s+' - ' + self.started_at.strftime('%d/%m/%Y')
  end
  
  def course_name
    self.course.name
  end
  
  def started_at_formatted
    self.started_at.strftime('%d/%m/%Y')
  end
  
  #soma a carga horaria da disciplina da matriz
  def matrix_workload 
    self.matrix_disciplines.sum(&:workload)
  end
  
  searchable do
    text :matrix_status_desc, :course_name, :model_custom_name
    
  end
  
  def has_children?
    errors.add(:base, "Existem Disciplinas associadas a esta Matriz") unless matrix_disciplines.count == 0
    errors.add(:base, "Existem Grades Horárias associadas a esta Matriz") unless timetables.count == 0  
    errors.add(:base, "Existem Turmas associadas a esta Matriz") unless school_classes.count == 0  
    errors.add(:base, "Existem Regras Acadêmicas associadas a esta Matriz") unless course_matrix_academic_rules.count == 0  
    
   
    if errors.size > 0
     false
    else
     true
    end    
  end  
  
end
