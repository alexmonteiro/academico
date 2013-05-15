class AddColumsToClassTeachings < ActiveRecord::Migration
  def change
    add_column :class_teachings, :user_id, :integer
    add_index :class_teachings, :user_id
  end
end
