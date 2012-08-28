class AddPersonTypeIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :person_type_id, :integer
  end
end
