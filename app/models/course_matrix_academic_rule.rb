class CourseMatrixAcademicRule < ActiveRecord::Base
  belongs_to :course_matrix
  belongs_to :academic_rule
  attr_accessible :course_matrix_id, :academic_rule_id
  validates_uniqueness_of :course_matrix_id, :scope => :academic_rule_id, :message => "já possui esta Matriz associada a Regra."
end
