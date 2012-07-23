class CreateEducationDegrees < ActiveRecord::Migration
  def change
    create_table :education_degrees do |t|
      t.string :degree

      t.timestamps
    end
  end
end
