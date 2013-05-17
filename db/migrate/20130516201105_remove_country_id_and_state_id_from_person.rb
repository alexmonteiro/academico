class RemoveCountryIdAndStateIdFromPerson < ActiveRecord::Migration
  def up
    remove_column :people, :country_id
    remove_column :people, :state_id
  end

  def down
    add_column :people, :country_id, :integer
    add_column :people, :state_id, :integer
    
  end
end
