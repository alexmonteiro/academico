class CreateWaysOfAdmissions < ActiveRecord::Migration
  def change
    create_table :ways_of_admissions do |t|
      t.string :description

      t.timestamps
    end
  end
end
