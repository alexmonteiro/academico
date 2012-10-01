class ApplicationController < ActionController::Base
  protect_from_forgery
  add_breadcrumb "Início", "/"
  
end
