class SchoolClass < ActiveRecord::Base
  belongs_to :matrix
  belongs_to :class_season
  belongs_to :shift_type
  attr_accessible :closing_at, :identifier, :opening_at, :period, :matrix_id, :class_season_id, :shift_type_id
  
  def model_custom_name
    'Turma: ' + self.identifier.to_s+ '  Matriz: ' + self.matrix.model_custom_name + ' Período: '  + self.class_season.model_custom_name 
  end

  def model_custom_tiny_name
    self.identifier.to_s+ ' / ' + self.matrix.model_custom_name
  end  
  
end
