class DisciplineClassExam < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :discipline_class_exam_type
  has_many :discipline_class_exam_results
  has_many :class_teachings
  attr_accessible :applied_at, :is_mandatory, :real_value, :title, :weight, :discipline_class_exam_type_id, :discipline_class_id
  before_destroy :has_children?
  
  validates_presence_of :applied_at, :title, :weight, :discipline_class_id
  
  def is_mandatory?
    if self.is_mandatory
      'Sim'
    else
      'Não'
    end
  end
  
  # Retorna a quantidade de alunos inscritos na classe mas sem nota lançada
  def count_class_registrations_without_results
    self.discipline_class.registration_classes.count - self.discipline_class_exam_results.count
  end
  
  def has_children?
    errors.add(:base, "Existem resultados lançados para esta avaliação.") unless discipline_class_exam_results.count == 0
    if errors.size > 0
     false
    else
     true
    end
    
  end

end
