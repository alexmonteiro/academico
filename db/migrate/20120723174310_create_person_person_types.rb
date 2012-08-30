class CreatePersonPersonTypes < ActiveRecord::Migration
  def change
    create_table :person_person_types do |t|
      t.belongs_to :person
      t.belongs_to :person_type

      t.timestamps
    end
    add_index :person_person_types, :person_id
    add_index :person_person_types, :person_type_id
  end
end
