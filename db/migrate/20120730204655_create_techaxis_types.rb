class CreateTechaxisTypes < ActiveRecord::Migration
  def change
    create_table :techaxis_types do |t|
      t.string :techaxis_type

      t.timestamps
    end
  end
end
