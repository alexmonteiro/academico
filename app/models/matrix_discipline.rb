class MatrixDiscipline < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => :matrix_id
  belongs_to :discipline
  belongs_to :matrix_discipline_group
  default_scope :order => :maxseasons
  attr_accessible :isdependence, :isoptative, :maxseasons, :discipline_id, :matrix_discipline_group_id, :matrix_id
  
  validates_uniqueness_of :matrix_id, :scope => :discipline_id, :message => "já possui esta disciplina associada."
  validates :matrix_id, :discipline_id, :maxseasons, :presence => true
  
  
  def discipline_name
    self.discipline.try(:name)
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
  
end
