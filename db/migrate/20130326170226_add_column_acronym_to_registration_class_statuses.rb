class AddColumnAcronymToRegistrationClassStatuses < ActiveRecord::Migration
  def up
    add_column :registration_class_statuses, :acronym, :string
  end
  
  def down
    remove_column :registration_class_statuses, :acronym
  end
end
