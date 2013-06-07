class AddColumnToAcademicRule < ActiveRecord::Migration
  def change
    add_column :academic_rules, :education_modality_id, :integer
    add_index :academic_rules, :education_modality_id
  end
end
