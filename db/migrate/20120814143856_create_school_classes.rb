class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :identifier
      t.integer :period
      t.references :matrix
      t.references :class_season
      t.references :shift_type
      t.date :opening_at
      t.date :closing_at

      t.timestamps
    end
    add_index :school_classes, :matrix_id
    add_index :school_classes, :class_season_id
    add_index :school_classes, :shift_type_id
  end
end
