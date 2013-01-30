class FixSpecialNeedsTypesColumnName < ActiveRecord::Migration
  def up
    rename_column :special_needs_types, :type, :description
  end

  def down
    nil
  end
end
