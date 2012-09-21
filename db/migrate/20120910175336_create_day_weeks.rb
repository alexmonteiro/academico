class CreateDayWeeks < ActiveRecord::Migration
  def change
    create_table :day_weeks do |t|
      t.string :description

      t.timestamps
    end
  end
end
