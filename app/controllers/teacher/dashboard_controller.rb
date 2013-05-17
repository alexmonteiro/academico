class Teacher::DashboardController < ApplicationController
  load_and_authorize_resource :class => false
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => nil }
    end
  end
  
  def show
    @class_teachings = ClassTeaching.where(:user_id => current_user.id)
  
    respond_to do |format|
      format.html # school_classes.html.erb
      format.json { render :json => @class_teachings }
    end
  end
  
  def teacher_school_classes
    @class_teachings = ClassTeaching.where(:user_id => current_user.id)
  
    respond_to do |format|
      format.html # school_classes.html.erb
      format.json { render :json => @class_teachings }
    end
  end
  
  def classes_calendar
    @class_teachings = ClassTeaching.where(:user_id => current_user.id)    
    @date = params[:month] ? Date.parse(params[:month]) : Date.today

    respond_to do |format|
      format.html # classes_calendar.html.erb
      format.json { render :json => @class_teachings }
    end
  end
  
end
