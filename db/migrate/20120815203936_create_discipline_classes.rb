class CreateDisciplineClasses < ActiveRecord::Migration
  def change
    create_table :discipline_classes do |t|
      t.references :school_class
      t.references :matrix_discipline
      t.string :code
      t.integer :vancancies
      t.date :started_at
      t.date :ending_at
      t.date :timetable_started_at

      t.timestamps
    end
    add_index :discipline_classes, :school_class_id
    add_index :discipline_classes, :matrix_discipline_id
  end
end
