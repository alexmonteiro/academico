class CreateClassTeachings < ActiveRecord::Migration
  def change
    create_table :class_teachings do |t|
      t.references :discipline_class
      t.references :person
      t.references :dept

      t.timestamps
    end
    add_index :class_teachings, :discipline_class_id
    add_index :class_teachings, :person_id
    add_index :class_teachings, :dept_id
  end
end
