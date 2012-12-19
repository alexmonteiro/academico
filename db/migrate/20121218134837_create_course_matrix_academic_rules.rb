class CreateCourseMatrixAcademicRules < ActiveRecord::Migration
  def change
    create_table :course_matrix_academic_rules do |t|
      t.references :course_matrix
      t.references :academic_rule

      t.timestamps
    end
    add_index :course_matrix_academic_rules, :course_matrix_id
    add_index :course_matrix_academic_rules, :academic_rule_id
  end
end
