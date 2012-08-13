class CreateEducationModalities < ActiveRecord::Migration
  def change
    create_table :education_modalities do |t|
      t.string :description
      t.references :education_step

      t.timestamps
    end
    add_index :education_modalities, :education_step_id
  end
end
