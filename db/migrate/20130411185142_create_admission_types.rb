class CreateAdmissionTypes < ActiveRecord::Migration
  def change
    create_table :admission_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
