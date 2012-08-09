class CreateMatrixEvaluationTypes < ActiveRecord::Migration
  def change
    create_table :matrix_evaluation_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
