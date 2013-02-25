class Users::UserRegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    welcome_path # it's not a home path
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end
end