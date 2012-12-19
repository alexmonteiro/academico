class CreateAcademicRuleTypes < ActiveRecord::Migration
  def change
    create_table :academic_rule_types do |t|
      t.string :rule

      t.timestamps
    end
  end
end
