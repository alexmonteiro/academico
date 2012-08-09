class CreateMatrixDisciplines < ActiveRecord::Migration
  def change
    create_table :matrix_disciplines do |t|
      t.references :matrix
      t.references :discipline
      t.references :matrix_discipline_group
      t.integer :maxseasons
      t.boolean :isoptative
      t.boolean :isdependence

      t.timestamps
    end
    add_index :matrix_disciplines, :matrix_id
    add_index :matrix_disciplines, :discipline_id
    add_index :matrix_disciplines, :matrix_discipline_group_id
  end
end
