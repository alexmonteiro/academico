class BloodTypesController < ApplicationController
  # GET /blood_types
  # GET /blood_types.json

  def index
    @blood_types = BloodType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @blood_types }
    end
  end

  # GET /blood_types/1
  # GET /blood_types/1.json
  def show
    @blood_type = BloodType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @blood_type }
    end
  end

  # GET /blood_types/new
  # GET /blood_types/new.json
  def new
    @blood_type = BloodType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @blood_type }
    end
  end

  # GET /blood_types/1/edit
  def edit
    @blood_type = BloodType.find(params[:id])
  end

  # POST /blood_types
  # POST /blood_types.json
  def create
    @blood_type = BloodType.new(params[:blood_type])

    respond_to do |format|
      if @blood_type.save
        format.html { redirect_to @blood_type, :notice => 'Blood type was successfully created.' }
        format.json { render :json => @blood_type, :status => :created, :location => @blood_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @blood_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blood_types/1
  # PUT /blood_types/1.json
  def update
    @blood_type = BloodType.find(params[:id])

    respond_to do |format|
      if @blood_type.update_attributes(params[:blood_type])
        format.html { redirect_to @blood_type, :notice => 'Blood type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @blood_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_types/1
  # DELETE /blood_types/1.json
  def destroy
    @blood_type = BloodType.find(params[:id])
    @blood_type.destroy

    respond_to do |format|
      format.html { redirect_to blood_types_url }
      format.json { head :no_content }
    end
  end
end
