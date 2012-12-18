class SchoolClass < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => "matrix_id"
  belongs_to :class_season
  belongs_to :shift_type
  has_many   :matrix_disciplines, :foreign_key => "matrix_id"
  has_many   :discipline_classes
  attr_accessible :closing_at, :identifier, :opening_at, :period, :matrix_id, :class_season_id, :shift_type_id
  default_scope :order => 'id DESC'
  
  validates :period, :matrix_id, :shift_type_id, :class_season_id, :opening_at, :presence => true
  validates_uniqueness_of :identifier
  
  # 20121001101A onde 2012 ano 1 período do ano 001 código sequencial do curso 1 turno (pode ser 1 2 ou 3 para mat vesp. E noturno) e 01 para o módulo do curso e o A para turma A, B, C
  def auto_identifier
    year = self.class_season.try(:year).to_s
    number = self.class_season.try(:number).to_s
    code = self.course_matrix.course.try(:code)
    turno = self.shift_type_id.to_s
    modulo = self.period.to_s.rjust(2,'0')
    ct = SchoolClass.find_by_sql("SELECT * FROM school_classes where identifier like '#{self.identifier}_'").count
    year + number + code + turno  + modulo + ('A'..'Z').to_a[ct]
  end
  
  def model_custom_name
    'Turma: ' + (self.identifier.to_s ? self.identifier.to_s : '')+ '  Matriz: ' + (self.course_matrix.try(:model_custom_name) ?  self.course_matrix.try(:model_custom_name) : '') + ' Período: '  + (self.class_season.try(:model_custom_name) ? self.class_season.try(:model_custom_name) : '')
  end

  def model_custom_tiny_name
    self.identifier.to_s+ ' / ' + self.course_matrix.try(:model_custom_name)
  end  

  def model_identifier_and_period
    'Turma: ' + (self.identifier.to_s ? self.identifier.to_s : '')+' Período: '  + (self.class_season.try(:model_custom_name) ? self.class_season.try(:model_custom_name) : '')
  end
  
  def model_course_matrix
    self.course_matrix.try(:course_name)
  end  

  def school_class_year
    #self.class_season.try(:year)
    self.course_matrix.try(:started_at).strftime('%Y')
  end
  
  searchable do
    text :id, :identifier, :opening_at, :opening_at
    
  end
  
end
