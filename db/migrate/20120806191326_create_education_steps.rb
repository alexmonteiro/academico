class CreateEducationSteps < ActiveRecord::Migration
  def change
    create_table :education_steps do |t|
      t.string :description
      t.references :education_level

      t.timestamps
    end
    add_index :education_steps, :education_level_id
  end
end
