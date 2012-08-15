class CreateEquipamentTypes < ActiveRecord::Migration
  def change
    create_table :equipament_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
