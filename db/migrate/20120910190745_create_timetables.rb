class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.references :matrix
      t.references :day_week

      t.timestamps
    end
    add_index :timetables, :matrix_id
    add_index :timetables, :day_week_id
  end
end
