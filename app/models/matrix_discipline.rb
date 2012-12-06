class MatrixDiscipline < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => :matrix_id
  belongs_to :discipline
  belongs_to :matrix_discipline_group
  has_many   :discipline_classes
  has_many   :matrix_discipline_prerequisites
  default_scope :order => :maxseasons
  attr_accessible :isdependence, :isoptative, :maxseasons, :discipline_id, :matrix_discipline_group_id, :matrix_id
  
  validates_uniqueness_of :matrix_id, :scope => :discipline_id, :message => "já possui esta disciplina associada."
  validates :matrix_id, :discipline_id, :maxseasons, :presence => true
  
  
  # Nome da disciplina
  def discipline_name
    self.discipline.try(:name)
  end
  
  # Código da disciplina
  def discipline_code
    self.discipline.try(:code)
  end
  

  # Nome do curso referente a este elemento curricular
  def course_name
    self.discipline.course.try(:name)
  end
  
  # Id e data de vigência da matriz curricular
  def matrix_name
    self.course_matrix.try(:matriz_name)
  end
  
  def isoptative_description
    self.isoptative ? "Sim" : "Não"
  end

  def isdependence_description
    self.isdependence ? "Sim" : "Não"
  end  
  
  #carga horária da disciplina da matriz
  def workload
    self.discipline.try(:workload)
  end
  
  #retorna codigo dos pre requisitos
  def prerequisit_codes
    pre = ""
    self.matrix_discipline_prerequisites.each do |discipline|
      pre += discipline.discipline_code+" "
    end
    pre
  end
  
end
