class CreateDisciplineTypes < ActiveRecord::Migration
  def change
    create_table :discipline_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
