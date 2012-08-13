class CreateCourseVacancies < ActiveRecord::Migration
  def change
    create_table :course_vacancies do |t|
      t.references :course
      t.references :class_season
      t.references :shift_type
      t.integer :number_vacancies

      t.timestamps
    end
    add_index :course_vacancies, :course_id
    add_index :course_vacancies, :class_season_id
    add_index :course_vacancies, :shift_type_id
  end
end
