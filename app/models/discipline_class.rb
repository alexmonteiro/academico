class DisciplineClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :matrix_discipline
  has_many :class_teachings, :foreign_key => "discipline_class_id"
  has_many :class_records, :order => 'recorded_at DESC'
  attr_accessible :code, :ending_at, :started_at, :timetable_started_at, :vancancies, :school_class_id, :matrix_discipline_id
  
  validates_uniqueness_of :school_class_id, :scope => :matrix_discipline_id, :message => "já possui esta disciplina associada a classe."
  validates :school_class_id, :matrix_discipline_id, :code, :presence => true
  
  def model_custom_name
    self.school_class.try(:model_custom_tiny_name)+" - "+self.matrix_discipline.id.to_s || "null" +" - "+self.matrix_discipline.try(:discipline_name)
  end
  
  def discipline_name
    self.matrix_discipline.try(:discipline_name)
  end
  
  def school_class_code
    self.school_class.try(:identifier)
  end
  
  searchable do
    text :discipline_name, :code, :school_class_code
    
  end  
end
