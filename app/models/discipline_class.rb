class DisciplineClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :matrix_discipline #Verificar esse parâmetro pois a turma está relacionada a uma matriz | Uma razão para isto ocorrer é alunos matriculados na mesma turma porém de matrizes diferentes.
  has_many :class_teachings, :foreign_key => "discipline_class_id"
  has_many :class_records, :order => 'recorded_at DESC'
  has_many :registration_classes
  has_many :discipline_class_exams, :order => 'applied_at'
  attr_accessible :code, :ending_at, :started_at, :timetable_started_at, :vancancies, :school_class_id, :matrix_discipline_id
  default_scope :order => 'id DESC'
  before_destroy :has_children?
  
  validates_uniqueness_of :school_class_id, :scope => :matrix_discipline_id, :message => "já possui esta disciplina associada a classe."
  validates :school_class_id, :matrix_discipline_id, :started_at, :code, :vancancies, :presence => true
  
  validate :timetable_started_at_date
  validate :ending_at_date
 
  def vacancies
    self.vancancies
  end
  
  def vacancies_left
    self.vancancies - self.registration_classes.count
  end
  
  def model_custom_name
    self.school_class.try(:model_custom_tiny_name)+" - "+ (self.id.to_s || "null") +" - "+self.matrix_discipline.try(:discipline_name)
  end
  
  def discipline_name
    self.matrix_discipline.try(:discipline_name)
  end  
  
  def course_name
    self.matrix_discipline.try(:course_name)
  end  
  
  
  def school_class_identifier
    self.school_class.try(:identifier)
  end

  def school_class_period
    self.school_class.try(:period)
  end  
  
  def school_class_identifier_period
    self.school_class.try(:identifier) + " período: " + self.school_class.try(:period).to_s
  end
  
  def discipline_class_dept
    self.school_class.course_matrix.course.dept.dept.try(:name)
  end
  
  def discipline_class_year
    self.school_class.school_class_year
  end
  
  def discipline_class_workload
    self.matrix_discipline.discipline.try(:workload)
  end
  
  # Retona count de aulas previstas
  def records_planned_count
    self.class_records.count
  end
  #Correção do Metodo acima
  def records_planned
    self.class_records.count
  end
  
  # Retorna count de aulas ministradas
  def records_taught_count
    self.class_records.where("record <> ''").count
  end
  
  # Retorna String de do tipo NN/MM onde NN = aulas ministradas e MM = aulas previstas
  def discipline_class_classes_taught_planned
    "#{self.records_taught_count}/#{self.records_planned_count}"
  end
  
  def discipline_year
    self.started_at
  end
  
  #Retorna String com professor(es)
  def discipline_teaches
    @teachings = ""
    @total_t = self.class_teachings.length
    self.class_teachings.each_with_index do |teacher,i|
      #(@total_t - 1) > i ? @teachings << "#{self.teacher.person.name} /" : "#{self.teacher.person.name}"
      i < (@total_t - 1) ? @teachings << "#{teacher.person.name} /" : @teachings << "#{teacher.person.name}"
    end
    "#{@teachings}"
  end
  
  def class_records_sort_by_name
    students_sort_by_name = []
    self.registration_classes.sort_by(&:model_student_name_whitout_accents).each_with_index do |class_record_presence, i|
      students_sort_by_name << class_record_presence
    end
    students_sort_by_name
  end
  
  def students_id_from_discipline
    self.registration_classes
  end
  
  searchable do
    text :id, :discipline_name, :code, :school_class_identifier
    
  end  
  
  #validates
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
  
  def timetable_started_at_date
        errors.add(:base, "Data de vigencia da grade horaria nao pode ser menor do que a data de abertura") unless timetable_started_at >= started_at
  end
  
  def ending_at_date
    if ending_at == nil
    else
        errors.add(:base, "Data de fechamento nao pode ser menor do que a data de abertura") unless ending_at >= started_at
    end
  end
end
