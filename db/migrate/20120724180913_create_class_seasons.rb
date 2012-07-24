class CreateClassSeasons < ActiveRecord::Migration
  def change
    create_table :class_seasons do |t|
      t.integer :year
      t.integer :number
      t.datetime :start_at
      t.datetime :end_at
      t.belongs_to :class_season_type
      t.belongs_to :dept

      t.timestamps
    end
    add_index :class_seasons, :class_season_type_id
    add_index :class_seasons, :dept_id
  end
end
