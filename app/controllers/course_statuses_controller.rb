class CourseStatusesController < ApplicationController
  # GET /course_statuses
  # GET /course_statuses.json
  def index
    @course_statuses = CourseStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @course_statuses }
    end
  end

  # GET /course_statuses/1
  # GET /course_statuses/1.json
  def show
    @course_status = CourseStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course_status }
    end
  end

  # GET /course_statuses/new
  # GET /course_statuses/new.json
  def new
    @course_status = CourseStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course_status }
    end
  end

  # GET /course_statuses/1/edit
  def edit
    @course_status = CourseStatus.find(params[:id])
  end

  # POST /course_statuses
  # POST /course_statuses.json
  def create
    @course_status = CourseStatus.new(params[:course_status])

    respond_to do |format|
      if @course_status.save
        format.html { redirect_to @course_status, :notice => 'Course status was successfully created.' }
        format.json { render :json => @course_status, :status => :created, :location => @course_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_statuses/1
  # PUT /course_statuses/1.json
  def update
    @course_status = CourseStatus.find(params[:id])

    respond_to do |format|
      if @course_status.update_attributes(params[:course_status])
        format.html { redirect_to @course_status, :notice => 'Course status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_statuses/1
  # DELETE /course_statuses/1.json
  def destroy
    @course_status = CourseStatus.find(params[:id])
    @course_status.destroy

    respond_to do |format|
      format.html { redirect_to course_statuses_url }
      format.json { head :no_content }
    end
  end
end
