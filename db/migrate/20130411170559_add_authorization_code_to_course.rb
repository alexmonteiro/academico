class AddAuthorizationCodeToCourse < ActiveRecord::Migration
  def up
    add_column :courses, :authorization_code, :string
  end
  
  def down
    remove_column :courses, :authorization_code
  end
end
