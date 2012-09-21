class CreateClassStudentStatuses < ActiveRecord::Migration
  def change
    create_table :class_student_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
