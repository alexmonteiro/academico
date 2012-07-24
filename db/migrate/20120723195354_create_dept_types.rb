class CreateDeptTypes < ActiveRecord::Migration
  def change
    create_table :dept_types do |t|
      t.string :dept_type

      t.timestamps
    end
  end
end
