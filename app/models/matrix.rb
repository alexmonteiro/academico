class Matrix < ActiveRecord::Base
  belongs_to :course
  belongs_to :matrix_evaluation_type
  belongs_to :matrix_status
  belongs_to :class_season_type
  has_many :matrix_disciplines
  attr_accessible :ended_at, :maxdisciplines, :maxseasons, :started_at, :class_season_type_id, :matrix_status_id, :matrix_evaluation_type_id, :course_id

  def model_custom_name
       self.id.to_s+ ' - ' + self.course.name + ' - '  + self.course.dept.acronym
  end  
  
end
