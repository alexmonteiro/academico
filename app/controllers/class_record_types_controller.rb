class ClassRecordTypesController < ApplicationController
  # GET /class_record_types
  # GET /class_record_types.json
  def index
    @class_record_types = ClassRecordType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_record_types }
    end
  end

  # GET /class_record_types/1
  # GET /class_record_types/1.json
  def show
    @class_record_type = ClassRecordType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_record_type }
    end
  end

  # GET /class_record_types/new
  # GET /class_record_types/new.json
  def new
    @class_record_type = ClassRecordType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_record_type }
    end
  end

  # GET /class_record_types/1/edit
  def edit
    @class_record_type = ClassRecordType.find(params[:id])
  end

  # POST /class_record_types
  # POST /class_record_types.json
  def create
    @class_record_type = ClassRecordType.new(params[:class_record_type])

    respond_to do |format|
      if @class_record_type.save
        format.html { redirect_to @class_record_type, :notice => 'Class record type was successfully created.' }
        format.json { render :json => @class_record_type, :status => :created, :location => @class_record_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_record_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_record_types/1
  # PUT /class_record_types/1.json
  def update
    @class_record_type = ClassRecordType.find(params[:id])

    respond_to do |format|
      if @class_record_type.update_attributes(params[:class_record_type])
        format.html { redirect_to @class_record_type, :notice => 'Class record type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_record_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_record_types/1
  # DELETE /class_record_types/1.json
  def destroy
    @class_record_type = ClassRecordType.find(params[:id])
    @class_record_type.destroy

    respond_to do |format|
      format.html { redirect_to class_record_types_url }
      format.json { head :no_content }
    end
  end
end
