class CreateMatrixStatuses < ActiveRecord::Migration
  def change
    create_table :matrix_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
