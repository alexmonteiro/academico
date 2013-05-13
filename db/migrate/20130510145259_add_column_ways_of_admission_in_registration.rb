class AddColumnWaysOfAdmissionInRegistration < ActiveRecord::Migration
  def up
    add_column :registrations, :ways_of_admission_id, :integer
    
    add_index :registrations, :ways_of_admission_id
  end

  def down
    remove_column :registrations, :ways_of_admission_id
  end
end
