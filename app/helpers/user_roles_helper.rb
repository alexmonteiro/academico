module UserRolesHelper
  
  def h_check_roles(user_id, role_id)
   if UserRole.find_by_user_id_and_role_id(user_id, role_id)
     true
   else
     false
   end
  end
  
end
