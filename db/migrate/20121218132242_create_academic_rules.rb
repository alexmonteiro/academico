class CreateAcademicRules < ActiveRecord::Migration
  def change
    create_table :academic_rules do |t|
      t.references :academic_rule_type
      t.string :operator
      t.integer :value

      t.timestamps
    end
    add_index :academic_rules, :academic_rule_type_id
  end
end
