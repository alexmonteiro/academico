class RemovePersonIdFromClassTeaching < ActiveRecord::Migration
  def up
    remove_column :class_teachings, :person_id
  end

  def down
    add_column :class_teachings, :person_id, :integer
  end
end
