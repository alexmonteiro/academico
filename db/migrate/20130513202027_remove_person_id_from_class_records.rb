class RemovePersonIdFromClassRecords < ActiveRecord::Migration
  def up
    remove_column :class_records, :person_id
  end

  def down
    add_column :class_records, :person_id, :integer
  end
end
