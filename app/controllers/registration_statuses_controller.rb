class RegistrationStatusesController < ApplicationController
  # GET /registration_statuses
  # GET /registration_statuses.json
  def index
    @registration_statuses = RegistrationStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_statuses }
    end
  end

  # GET /registration_statuses/1
  # GET /registration_statuses/1.json
  def show
    @registration_status = RegistrationStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_status }
    end
  end

  # GET /registration_statuses/new
  # GET /registration_statuses/new.json
  def new
    @registration_status = RegistrationStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_status }
    end
  end

  # GET /registration_statuses/1/edit
  def edit
    @registration_status = RegistrationStatus.find(params[:id])
  end

  # POST /registration_statuses
  # POST /registration_statuses.json
  def create
    @registration_status = RegistrationStatus.new(params[:registration_status])

    respond_to do |format|
      if @registration_status.save
        format.html { redirect_to @registration_status, :notice => 'Registration status was successfully created.' }
        format.json { render :json => @registration_status, :status => :created, :location => @registration_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_statuses/1
  # PUT /registration_statuses/1.json
  def update
    @registration_status = RegistrationStatus.find(params[:id])

    respond_to do |format|
      if @registration_status.update_attributes(params[:registration_status])
        format.html { redirect_to @registration_status, :notice => 'Registration status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_statuses/1
  # DELETE /registration_statuses/1.json
  def destroy
    @registration_status = RegistrationStatus.find(params[:id])
    @registration_status.destroy

    respond_to do |format|
      format.html { redirect_to registration_statuses_url }
      format.json { head :no_content }
    end
  end
end
