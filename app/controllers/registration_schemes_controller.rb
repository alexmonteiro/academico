class RegistrationSchemesController < ApplicationController
  # GET /registration_schemes
  # GET /registration_schemes.json
  def index
    @registration_schemes = RegistrationScheme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_schemes }
    end
  end

  # GET /registration_schemes/1
  # GET /registration_schemes/1.json
  def show
    @registration_scheme = RegistrationScheme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_scheme }
    end
  end

  # GET /registration_schemes/new
  # GET /registration_schemes/new.json
  def new
    @registration_scheme = RegistrationScheme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_scheme }
    end
  end

  # GET /registration_schemes/1/edit
  def edit
    @registration_scheme = RegistrationScheme.find(params[:id])
  end

  # POST /registration_schemes
  # POST /registration_schemes.json
  def create
    @registration_scheme = RegistrationScheme.new(params[:registration_scheme])

    respond_to do |format|
      if @registration_scheme.save
        format.html { redirect_to @registration_scheme, :notice => 'Registration scheme was successfully created.' }
        format.json { render :json => @registration_scheme, :status => :created, :location => @registration_scheme }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration_scheme.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_schemes/1
  # PUT /registration_schemes/1.json
  def update
    @registration_scheme = RegistrationScheme.find(params[:id])

    respond_to do |format|
      if @registration_scheme.update_attributes(params[:registration_scheme])
        format.html { redirect_to @registration_scheme, :notice => 'Registration scheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration_scheme.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_schemes/1
  # DELETE /registration_schemes/1.json
  def destroy
    @registration_scheme = RegistrationScheme.find(params[:id])
    @registration_scheme.destroy

    respond_to do |format|
      format.html { redirect_to registration_schemes_url }
      format.json { head :no_content }
    end
  end
end
