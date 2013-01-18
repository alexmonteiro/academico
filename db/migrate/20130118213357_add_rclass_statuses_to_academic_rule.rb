class AddRclassStatusesToAcademicRule < ActiveRecord::Migration
  def change
    add_column :academic_rules, :rclass_status_true_id, :integer
    add_column :academic_rules, :rclass_status_false_id, :integer
  end
end
