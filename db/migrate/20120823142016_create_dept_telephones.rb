class CreateDeptTelephones < ActiveRecord::Migration
  def change
    create_table :dept_telephones do |t|
      t.references :telephone_type
      t.references :dept
      t.integer :area_code
      t.integer :number
      t.integer :branch

      t.timestamps
    end
    add_index :dept_telephones, :telephone_type_id
    add_index :dept_telephones, :dept_id
  end
end
