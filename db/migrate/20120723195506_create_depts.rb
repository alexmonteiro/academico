class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :name
      t.string :acronym
      t.string :cnpj
      t.date :started_at
      t.date :finished_at
      t.string :site
      t.string :email
      t.string :description
      t.references :dept_type
      t.references :dept

      t.timestamps
    end
    add_index :depts, :dept_type_id
    add_index :depts, :dept_id
  end
end
