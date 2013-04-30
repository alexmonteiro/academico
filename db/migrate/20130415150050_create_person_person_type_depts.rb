class CreatePersonPersonTypeDepts < ActiveRecord::Migration
  def change
    create_table :person_person_type_depts do |t|
      t.references :person_person_type
      t.references :dept

      t.timestamps
    end
    add_index :person_person_type_depts, :person_person_type_id
    add_index :person_person_type_depts, :dept_id
  end
end
