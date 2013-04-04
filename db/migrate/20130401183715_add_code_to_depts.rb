class AddCodeToDepts < ActiveRecord::Migration
  def up
    add_column :depts, :code_number, :string
  end
  
  def down
    remove_column :depts, :code_number
  end
end
