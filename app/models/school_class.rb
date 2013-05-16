class SchoolClass < ActiveRecord::Base
  belongs_to :course_matrix, :foreign_key => "matrix_id"
  belongs_to :class_season
  belongs_to :shift_type
  has_many   :matrix_disciplines, :foreign_key => "matrix_id"
  has_many   :discipline_classes
  attr_accessible :closing_at, :identifier, :opening_at, :period, :matrix_id, :class_season_id, :shift_type_id
  default_scope :order => 'id DESC'
  before_destroy :has_children?
  
  validates :period, :matrix_id, :shift_type_id, :class_season_id, :opening_at, :presence => true
  validates_uniqueness_of :identifier
  
  validate :closing_at_date
  # 20121001101A onde 2012 ano 1 período do ano 001 código sequencial do curso 1 turno (pode ser 1 2 ou 3 para mat vesp. E noturno) e 01 para o módulo do curso e o A para turma A, B, C
  def auto_identifier
    year = self.class_season.try(:year).to_s
    number = self.class_season.try(:number).to_s
    code = self.course_matrix.course.try(:code)
    turno = self.shift_type_id.to_s
    modulo = self.period.to_s.rjust(2,'0')
    ct = SchoolClass.find_by_sql("SELECT * FROM school_classes where identifier like '#{year + number + code + turno  + modulo}_'").count
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

  def discipline_classes_from_scholl_class
    self.discipline_classes
  end
  
  def total_ausents_discipline
    total_aulas = 0
    self.discipline_classes.each do |discipline|
      total_aulas = total_aulas + discipline.records_planned
    end
    total_aulas
  end
  
  #Modalidade do Curso da Turma 
  def school_course_modality
    self.course_matrix.course_modality
  end
  
  #Campus do Curso da Turma 
  def school_course_dept
    self.course_matrix.course_dept
  end
  
  #Lista de estudantes por turma
  def list_students_by_school_class
    students_from_school_class = []
    self.discipline_classes.each do |disciplina|
      disciplina.class_records_sort_by_name.each do |aluno|
        students_from_school_class << aluno
      end
    end
    
    students_from_school_class.uniq_by { |i| i.student_id }
  end
  
  #Total de faltas de um estudante
  def total_students_ausent(student)
    ausents = 0
    self.discipline_classes.each do |discipline|
      if !discipline.blank?
        discipline.students_id_from_discipline.each do |aluno|
          if student.student_id == aluno.student_id
            ausents = ausents + aluno.is_ausent_count
            break;
          end
        end
      end
    end
    ausents
  end
  

  def has_children?
    errors.add(:base, "Existem Classes associadas a esta Turma") unless discipline_classes.count == 0
   
    if errors.size > 0
     false
    else
     true
    end    
  end  
  
  def closing_at_date
    if !self.closing_at.blank?
      errors.add(:base, "Data de fechamento não pode ser menor do que a abertura") if closing_at < opening_at
    end
  end
  
  def id
    self.identifier
  end
  
end
