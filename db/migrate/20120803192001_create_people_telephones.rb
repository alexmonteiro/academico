class CreatePeopleTelephones < ActiveRecord::Migration
  def change
    create_table :people_telephones do |t|
      t.references :telephone_type
      t.references :people
      t.integer :area_code
      t.integer :number
      t.integer :branch

      t.timestamps
    end
    add_index :people_telephones, :telephone_type_id
    add_index :people_telephones, :people_id
  end
end
