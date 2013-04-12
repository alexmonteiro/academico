class RegistrationAdmissionTypesController < ApplicationController
  # GET /registration_admission_types
  # GET /registration_admission_types.json
  def index
    @registration_admission_types = RegistrationAdmissionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_admission_types }
    end
  end

  # GET /registration_admission_types/1
  # GET /registration_admission_types/1.json
  def show
    @registration_admission_type = RegistrationAdmissionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_admission_type }
    end
  end

  # GET /registration_admission_types/new
  # GET /registration_admission_types/new.json
  def new
    @registration_admission_type = RegistrationAdmissionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_admission_type }
    end
  end

  # GET /registration_admission_types/1/edit
  def edit
    @registration_admission_type = RegistrationAdmissionType.find(params[:id])
  end

  # POST /registration_admission_types
  # POST /registration_admission_types.json
  def create
    @registration_admission_type = RegistrationAdmissionType.new(params[:registration_admission_type])

    respond_to do |format|
      if @registration_admission_type.save
        format.html { redirect_to @registration_admission_type, :notice => 'Registration admission type was successfully created.' }
        format.json { render :json => @registration_admission_type, :status => :created, :location => @registration_admission_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration_admission_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_admission_types/1
  # PUT /registration_admission_types/1.json
  def update
    @registration_admission_type = RegistrationAdmissionType.find(params[:id])

    respond_to do |format|
      if @registration_admission_type.update_attributes(params[:registration_admission_type])
        format.html { redirect_to @registration_admission_type, :notice => 'Registration admission type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration_admission_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_admission_types/1
  # DELETE /registration_admission_types/1.json
  def destroy
    @registration_admission_type = RegistrationAdmissionType.find(params[:id])
    @registration_admission_type.destroy

    respond_to do |format|
      format.html { redirect_to registration_admission_types_url }
      format.json { head :no_content }
    end
  end
end
