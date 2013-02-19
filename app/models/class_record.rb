class ClassRecord < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :person #professor
  belongs_to :class_time
  belongs_to :class_record_type
  has_many   :class_record_presences
  attr_accessible :justification, :note, :record, :recorded_at,
                  :person_id, :class_record_type_id, :class_time_id, :discipline_class_id
  before_destroy :has_children?                  
                  
  validates :person_id, :recorded_at, :class_record_type_id, :class_time_id, :record, :presence => true             

  def model_custom_name
    I18n.localize(self.recorded_at) + " " + (self.class_time.try(:model_custom_name) ? self.class_time.try(:model_custom_name) : '<sem horário>') + " " + self.discipline_class.try(:model_custom_name)
  end
  
  def students_class
    self.discipline_class.registration_classes
  end
  
  # Retorna a quantidade de alunos inscritos na classe mas sem nota lançada
  def count_class_registrations_without_results
    self.discipline_class.registration_classes.count - self.class_record_presences.count
  end
  
  # Retorna quantidade de presencas(true) ou faltas(false)
  def countPresences(*args)
    self.class_record_presences.where(:is_present => args).count
  end
  
  private
  def has_children?
    errors.add(:base, "Existem Presenças associadas a esta Aula") unless class_record_presences.count == 0
   
    if errors.size > 0
     false
    else
     true
    end    
  end  
  
end
