class MatrixDisciplinePrerequisite < ActiveRecord::Base
  belongs_to :matrix_discipline
  belongs_to :pre_matrix_discipline, :class_name => "MatrixDiscipline", :foreign_key => :pre_matrix_discipline_id
  attr_accessible :pre_matrix_discipline_id, :matrix_discipline_id
 
  validates_uniqueness_of :pre_matrix_discipline_id, :scope => :matrix_discipline_id, :message => " já cadastrado para esta disciplina."
  validates :pre_matrix_discipline_id, :matrix_discipline_id, :presence => true
  
  # Nome da disciplina pré requisito
  def discipline_name
    self.pre_matrix_discipline.try(:discipline_name)
  end

  # Código do disciplina pré requisito
  def discipline_code
    self.pre_matrix_discipline.try(:discipline_code)
  end

  
end
