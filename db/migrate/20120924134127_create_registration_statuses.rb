class CreateRegistrationStatuses < ActiveRecord::Migration
  def change
    create_table :registration_statuses do |t|
      t.string :description
      t.boolean :is_attending, :default => false

      t.timestamps
    end
  end
end
