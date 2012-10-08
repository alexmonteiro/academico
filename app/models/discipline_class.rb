class DisciplineClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :matrix_discipline
  has_many :class_teachings, :foreign_key => "discipline_class_id"
  has_many :class_records, :order => 'recorded_at DESC'
  has_many :registration_classes
  has_many :discipline_class_exams, :order => 'applied_at'
  attr_accessible :code, :ending_at, :started_at, :timetable_started_at, :vancancies, :school_class_id, :matrix_discipline_id
  default_scope :order => 'id DESC'
  before_destroy :has_children?
  
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
  

  def has_children?
    errors.add(:base, "Existem Matrículas associadas a esta Classe") unless registration_classes.count == 0
    errors.add(:base, "Existem Professores associadas a esta Classe") unless class_teachings.count == 0  
    errors.add(:base, "Existem Aulas associadas a esta Classe") unless class_records.count == 0
    errors.add(:base, "Existem Avaliações associadas a esta Classe") unless discipline_class_exams.count == 0        
    if errors.size > 0
     false
    else
     true
    end
    
  end
end
