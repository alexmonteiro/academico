class CreateMatrixDisciplineGroups < ActiveRecord::Migration
  def change
    create_table :matrix_discipline_groups do |t|
      t.string :description

      t.timestamps
    end
  end
end
