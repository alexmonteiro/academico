class WaysOfAdmissionsController < ApplicationController
  load_and_authorize_resource
  # GET /ways_of_admissions
  # GET /ways_of_admissions.json
  def index
    @ways_of_admissions = WaysOfAdmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ways_of_admissions }
    end
  end

  # GET /ways_of_admissions/1
  # GET /ways_of_admissions/1.json
  def show
    @ways_of_admission = WaysOfAdmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ways_of_admission }
    end
  end

  # GET /ways_of_admissions/new
  # GET /ways_of_admissions/new.json
  def new
    @ways_of_admission = WaysOfAdmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ways_of_admission }
    end
  end

  # GET /ways_of_admissions/1/edit
  def edit
    @ways_of_admission = WaysOfAdmission.find(params[:id])
  end

  # POST /ways_of_admissions
  # POST /ways_of_admissions.json
  def create
    @ways_of_admission = WaysOfAdmission.new(params[:ways_of_admission])

    respond_to do |format|
      if @ways_of_admission.save
        format.html { redirect_to @ways_of_admission, :notice => 'Ways of admission was successfully created.' }
        format.json { render :json => @ways_of_admission, :status => :created, :location => @ways_of_admission }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ways_of_admission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ways_of_admissions/1
  # PUT /ways_of_admissions/1.json
  def update
    @ways_of_admission = WaysOfAdmission.find(params[:id])

    respond_to do |format|
      if @ways_of_admission.update_attributes(params[:ways_of_admission])
        format.html { redirect_to @ways_of_admission, :notice => 'Ways of admission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ways_of_admission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ways_of_admissions/1
  # DELETE /ways_of_admissions/1.json
  def destroy
    @ways_of_admission = WaysOfAdmission.find(params[:id])
    @ways_of_admission.destroy

    respond_to do |format|
      format.html { redirect_to ways_of_admissions_url }
      format.json { head :no_content }
    end
  end
end
