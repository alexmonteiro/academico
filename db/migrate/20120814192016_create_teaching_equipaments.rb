class CreateTeachingEquipaments < ActiveRecord::Migration
  def change
    create_table :teaching_equipaments do |t|
      t.string :description
      t.date :arrival_date
      t.references :equipament_type
      t.references :situation_teaching_equipament
      t.references :dept

      t.timestamps
    end
    add_index :teaching_equipaments, :equipament_type_id
    add_index :teaching_equipaments, :situation_teaching_equipament_id
    add_index :teaching_equipaments, :dept_id
  end
end
