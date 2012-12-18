class CourseMatrixAcademicRule < ActiveRecord::Base
  belongs_to :course_matrix
  belongs_to :academic_rule
  # attr_accessible :title, :body
end
