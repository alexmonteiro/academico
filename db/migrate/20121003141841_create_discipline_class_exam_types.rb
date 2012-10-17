class CreateDisciplineClassExamTypes < ActiveRecord::Migration
  def change
    create_table :discipline_class_exam_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
