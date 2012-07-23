class CreateBloodTypes < ActiveRecord::Migration
  def change
    create_table :blood_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
