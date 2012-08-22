class MatrixDiscipline < ActiveRecord::Base
  belongs_to :matrix
  belongs_to :discipline
  belongs_to :matrix_discipline_group
  attr_accessible :isdependence, :isoptative, :maxseasons, :discipline_id, :matrix_discipline_group_id
  
  validates_uniqueness_of :matrix_id, :scope => :discipline_id, :message => "já possui esta disciplina associada."
  validates :matrix_id, :discipline_id, :presence => true
  
  
  def discipline_name
    self.discipline.name
  end
  
  def isoptative_description
    self.isoptative ? "Sim" : "Não"
  end

  def isdependence_description
    self.isdependence ? "Sim" : "Não"
  end  
  
  
end
