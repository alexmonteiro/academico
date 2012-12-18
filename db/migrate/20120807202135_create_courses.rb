class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.string :nickname
      t.text :goal
      t.integer :maxtime
      t.integer :mintime
      t.date :started_at
      t.date :ended_at
      t.references :dept
      t.references :registration_scheme
      t.references :class_season_type
      t.references :learning_modality
      t.references :knowledge_area
      t.references :techaxes
      t.references :education_modality

      t.timestamps
    end
    add_index :courses, :dept_id
    add_index :courses, :registration_scheme_id
    add_index :courses, :class_season_type_id
    add_index :courses, :learning_modality_id
    add_index :courses, :knowledge_area_id
    add_index :courses, :techaxes_id
    add_index :courses, :education_modality_id
  end
end
