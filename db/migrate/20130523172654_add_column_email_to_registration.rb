class AddColumnEmailToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :responsible_email, :string
  end
end
