class CreateClassRecordPresences < ActiveRecord::Migration
  def change
    create_table :class_record_presences do |t|
      t.references :class_record
      t.references :registration_class
      t.boolean :is_present, :default => true

      t.timestamps
    end
    add_index :class_record_presences, :class_record_id
    add_index :class_record_presences, :registration_class_id
  end
end
