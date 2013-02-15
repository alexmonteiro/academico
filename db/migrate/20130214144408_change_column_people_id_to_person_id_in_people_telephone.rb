class ChangeColumnPeopleIdToPersonIdInPeopleTelephone < ActiveRecord::Migration
  def up
    rename_column :people_telephones, :people_id, :person_id
  end

  def down
    rename_column :people_telephones, :person_id, :people_id
  end
end
