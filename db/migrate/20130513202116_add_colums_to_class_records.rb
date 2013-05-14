class AddColumsToClassRecords < ActiveRecord::Migration
  def change
    add_column :class_records, :user_id, :integer
    add_index :class_records, :user_id
  end
end
