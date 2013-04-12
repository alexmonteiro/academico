class CreateRegistrationAdmissionTypes < ActiveRecord::Migration
  def change
    create_table :registration_admission_types do |t|
      t.references :registration
      t.references :admission_type

      t.timestamps
    end
    add_index :registration_admission_types, :registration_id
    add_index :registration_admission_types, :admission_type_id
  end
end
