class CreateTimetableClassTimes < ActiveRecord::Migration
  def change
    create_table :timetable_class_times do |t|
      t.references :timetable
      t.references :class_time

      t.timestamps
    end
    add_index :timetable_class_times, :timetable_id
    add_index :timetable_class_times, :class_time_id
  end
end
