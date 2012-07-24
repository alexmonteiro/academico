class CreateClassSeasonTypes < ActiveRecord::Migration
  def change
    create_table :class_season_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
