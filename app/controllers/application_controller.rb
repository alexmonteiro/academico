class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :breadcumbs_generator
  
  #load_and_authorize_resource
  
  
  def breadcumbs_generator
    if user_signed_in?
      add_breadcrumb "Início", "/"
      relative_path = ""
      "#{request.fullpath}"[1..-1].split('/').each do |path|
        relative_path += "/"+path
        add_breadcrumb path.to_s, relative_path
      end
    end
  end
  
  
end
