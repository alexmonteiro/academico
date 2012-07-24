class DeptTypesController < ApplicationController
  # GET /dept_types
  # GET /dept_types.json
  def index
    @dept_types = DeptType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dept_types }
    end
  end

  # GET /dept_types/1
  # GET /dept_types/1.json
  def show
    @dept_type = DeptType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dept_type }
    end
  end

  # GET /dept_types/new
  # GET /dept_types/new.json
  def new
    @dept_type = DeptType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dept_type }
    end
  end

  # GET /dept_types/1/edit
  def edit
    @dept_type = DeptType.find(params[:id])
  end

  # POST /dept_types
  # POST /dept_types.json
  def create
    @dept_type = DeptType.new(params[:dept_type])

    respond_to do |format|
      if @dept_type.save
        format.html { redirect_to @dept_type, :notice => 'Dept type was successfully created.' }
        format.json { render :json => @dept_type, :status => :created, :location => @dept_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dept_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dept_types/1
  # PUT /dept_types/1.json
  def update
    @dept_type = DeptType.find(params[:id])

    respond_to do |format|
      if @dept_type.update_attributes(params[:dept_type])
        format.html { redirect_to @dept_type, :notice => 'Dept type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dept_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_types/1
  # DELETE /dept_types/1.json
  def destroy
    @dept_type = DeptType.find(params[:id])
    @dept_type.destroy

    respond_to do |format|
      format.html { redirect_to dept_types_url }
      format.json { head :no_content }
    end
  end
end
