class Course < ActiveRecord::Base
  belongs_to :dept
  belongs_to :registration_scheme
  belongs_to :class_season_type
  belongs_to :learning_modality
  belongs_to :knowledge_area
  belongs_to :techaxis, :foreign_key => :techaxes_id
  belongs_to :education_modality
  belongs_to :course_status
  has_many :disciplines
  has_many :matrices
  attr_accessible :code, :ended_at, :goal, :maxtime, :mintime, :name, :nickname, :started_at, :dept, :techaxes_id, :learning_modality_id, :education_modality_id, :class_season_type_id, :knowledge_area_id, :dept_id, :registration_scheme_id, :course_status_id
  
  
  def dept_acronym
    self.dept.dept.try(:acronym)+"-"+self.dept.try(:acronym)
  end

  def dept_name
    self.dept.try(:name)
  end
  
  def started_at_formatted
    self.started_at.strftime("%d/%m/%Y")
  end
      
  
  searchable do
    text :code, :name, :nickname, :dept_acronym, :dept_name
    
  end
  
end
