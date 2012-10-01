class SchoolClass < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => "matrix_id"
  belongs_to :class_season
  belongs_to :shift_type
  has_many   :matrix_disciplines, :foreign_key => "matrix_id"
  attr_accessible :closing_at, :identifier, :opening_at, :period, :matrix_id, :class_season_id, :shift_type_id
  
  def model_custom_name
    'Turma: ' + (self.identifier.to_s ? self.identifier.to_s : '')+ '  Matriz: ' + (self.course_matrix.try(:model_custom_name) ?  self.course_matrix.try(:model_custom_name) : '') + ' Período: '  + (self.class_season.try(:model_custom_name) ? self.class_season.try(:model_custom_name) : '')
  end

  def model_custom_tiny_name
    self.identifier.to_s+ ' / ' + self.course_matrix.try(:model_custom_name)
  end  
  
end
