class CreateLearningModalities < ActiveRecord::Migration
  def change
    create_table :learning_modalities do |t|
      t.string :description

      t.timestamps
    end
  end
end
