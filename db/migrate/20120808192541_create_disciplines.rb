class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :code
      t.text :description
      t.text :goals
      t.integer :workload
      t.integer :credits
      t.references :discipline_type
      t.references :course
      t.references :dept

      t.timestamps
    end
    add_index :disciplines, :discipline_type_id
    add_index :disciplines, :course_id
    add_index :disciplines, :dept_id
  end
end
