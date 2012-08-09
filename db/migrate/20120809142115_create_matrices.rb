class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.date :started_at
      t.date :ended_at
      t.integer :maxdisciplines
      t.integer :maxseasons
      t.references :course
      t.references :matrix_evaluation_type
      t.references :matrix_status
      t.references :class_season_type

      t.timestamps
    end
    add_index :matrices, :course_id
    add_index :matrices, :matrix_evaluation_type_id
    add_index :matrices, :matrix_status_id
    add_index :matrices, :class_season_type_id
  end
end
