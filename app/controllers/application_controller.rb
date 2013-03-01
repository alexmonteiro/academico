class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  load_and_authorize_resource
  protect_from_forgery
  
  
  
  def breadcumbs
    add_breadcrumb "Início", "/" if user_signed_in?
  end
  
end
