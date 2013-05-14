class UserRole < ActiveRecord::Base
  set_table_name "users_roles"
  belongs_to :user
  belongs_to :role
  attr_accessible :user_id, :role_id
end
