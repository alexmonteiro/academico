class CreateClassRecords < ActiveRecord::Migration
  def change
    create_table :class_records do |t|
      t.date :recorded_at
      t.text :record
      t.text :note
      t.text :justification
      t.references :discipline_class
      t.references :person
      t.references :class_time
      t.references :class_record_type

      t.timestamps
    end
    add_index :class_records, :discipline_class_id
    add_index :class_records, :person_id
    add_index :class_records, :class_time_id
    add_index :class_records, :class_record_type_id
  end
end
