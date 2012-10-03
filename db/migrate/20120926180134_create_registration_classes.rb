class CreateRegistrationClasses < ActiveRecord::Migration
  def change
    create_table :registration_classes do |t|
      t.references :registration
      t.references :discipline_class
      t.date :registered_at
      t.references :registration_class_status

      t.timestamps
    end
    add_index :registration_classes, :registration_id
    add_index :registration_classes, :discipline_class_id
    add_index :registration_classes, :registration_class_status_id
  end
end
