class CreateClassTimes < ActiveRecord::Migration
  def change
    create_table :class_times do |t|
      t.string :started_at
      t.string :ended_at

      t.timestamps
    end
  end
end
