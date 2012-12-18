class CreateMatrixDisciplinePrerequisites < ActiveRecord::Migration
  def change
    create_table :matrix_discipline_prerequisites do |t|
      t.references :matrix_discipline
      t.integer :pre_matrix_discipline_id

      t.timestamps
    end
    add_index :matrix_discipline_prerequisites, :matrix_discipline_id
  end
end
