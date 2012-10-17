class CreateDisciplineClassExams < ActiveRecord::Migration
  def change
    create_table :discipline_class_exams do |t|
      t.date :applied_at
      t.string :title
      t.decimal :weight
      t.decimal :real_value
      t.references :discipline_class
      t.references :discipline_class_exam_type
      t.boolean :is_mandatory

      t.timestamps
    end
    add_index :discipline_class_exams, :discipline_class_id
    add_index :discipline_class_exams, :discipline_class_exam_type_id
  end
end
