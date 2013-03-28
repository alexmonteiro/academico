class ApplicationController < ActionController::Base
  before_filter :authenticate_user!, :breadcumbs_generator
  protect_from_forgery
  
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
  
  rescue_from CanCan::AccessDenied do |exception|
    exception.default_message = "Perfil sem acesso a esta rotina"
    redirect_to root_url, :alert => exception.message
  end
  
  
end
