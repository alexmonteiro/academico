class AddCourseStatusIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :course_status_id, :integer
    add_index :courses, :course_status_id
  end
  
end
