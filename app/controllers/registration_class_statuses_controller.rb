class RegistrationClassStatusesController < ApplicationController
  # GET /registration_class_statuses
  # GET /registration_class_statuses.json
  def index
    @registration_class_statuses = RegistrationClassStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_class_statuses }
    end
  end

  # GET /registration_class_statuses/1
  # GET /registration_class_statuses/1.json
  def show
    @registration_class_status = RegistrationClassStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_class_status }
    end
  end

  # GET /registration_class_statuses/new
  # GET /registration_class_statuses/new.json
  def new
    @registration_class_status = RegistrationClassStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_class_status }
    end
  end

  # GET /registration_class_statuses/1/edit
  def edit
    @registration_class_status = RegistrationClassStatus.find(params[:id])
  end

  # POST /registration_class_statuses
  # POST /registration_class_statuses.json
  def create
    @registration_class_status = RegistrationClassStatus.new(params[:registration_class_status])

    respond_to do |format|
      if @registration_class_status.save
        format.html { redirect_to @registration_class_status, :notice => 'Estado de registro de classe criada.' }
        format.json { render :json => @registration_class_status, :status => :created, :location => @registration_class_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration_class_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_class_statuses/1
  # PUT /registration_class_statuses/1.json
  def update
    @registration_class_status = RegistrationClassStatus.find(params[:id])

    respond_to do |format|
      if @registration_class_status.update_attributes(params[:registration_class_status])
        format.html { redirect_to @registration_class_status, :notice => 'Estado de registro de classe atualizada.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration_class_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_class_statuses/1
  # DELETE /registration_class_statuses/1.json
  def destroy
    @registration_class_status = RegistrationClassStatus.find(params[:id])
    @registration_class_status.destroy

    respond_to do |format|
      format.html { redirect_to registration_class_statuses_url, :notice => 'Estado de registro de classe excluída.' }
      format.json { head :no_content }
    end
  end
end
