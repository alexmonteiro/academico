class RegistrationClassesController < ApplicationController
  # GET /registration_classes
  # GET /registration_classes.json
  def index
    @registration_classes = RegistrationClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_classes }
    end
  end

  # GET /registration_classes/1
  # GET /registration_classes/1.json
  def show
    @registration_class = RegistrationClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_class }
    end
  end

  # GET /registration_classes/new
  # GET /registration_classes/new.json
  def new
    @registration_class = RegistrationClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_class }
    end
  end

  # GET /registration_classes/1/edit
  def edit
    @registration_class = RegistrationClass.find(params[:id])
  end

  # POST /registration_classes
  # POST /registration_classes.json
  def create
    @registration_class = RegistrationClass.new(params[:registration_class])

    respond_to do |format|
      if @registration_class.save
        format.html { redirect_to @registration_class, :notice => 'Registration class was successfully created.' }
        format.json { render :json => @registration_class, :status => :created, :location => @registration_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_classes/1
  # PUT /registration_classes/1.json
  def update
    @registration_class = RegistrationClass.find(params[:id])

    respond_to do |format|
      if @registration_class.update_attributes(params[:registration_class])
        format.html { redirect_to @registration_class, :notice => 'Registration class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_classes/1
  # DELETE /registration_classes/1.json
  def destroy
    @registration_class = RegistrationClass.find(params[:id])
    @registration_class.destroy

    respond_to do |format|
      format.html { redirect_to registration_classes_url }
      format.json { head :no_content }
    end
  end
end
