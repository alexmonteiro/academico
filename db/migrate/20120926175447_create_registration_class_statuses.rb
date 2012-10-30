class CreateRegistrationClassStatuses < ActiveRecord::Migration
  def change
    create_table :registration_class_statuses do |t|
      t.string :description
      t.boolean :is_approved

      t.timestamps
    end
  end
end
