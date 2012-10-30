class CreateDisciplineClassExamResults < ActiveRecord::Migration
  def change
    create_table :discipline_class_exam_results do |t|
      t.references :registration_class
      t.references :discipline_class_exam
      t.string :concept
      t.decimal :result

      t.timestamps
    end
    add_index :discipline_class_exam_results, :registration_class_id
    add_index :discipline_class_exam_results, :discipline_class_exam_id
  end
end
