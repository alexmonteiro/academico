class DisciplineTypesController < ApplicationController
  # GET /discipline_types
  # GET /discipline_types.json
  def index
    @discipline_types = DisciplineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_types }
    end
  end

  # GET /discipline_types/1
  # GET /discipline_types/1.json
  def show
    @discipline_type = DisciplineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_type }
    end
  end

  # GET /discipline_types/new
  # GET /discipline_types/new.json
  def new
    @discipline_type = DisciplineType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_type }
    end
  end

  # GET /discipline_types/1/edit
  def edit
    @discipline_type = DisciplineType.find(params[:id])
  end

  # POST /discipline_types
  # POST /discipline_types.json
  def create
    @discipline_type = DisciplineType.new(params[:discipline_type])

    respond_to do |format|
      if @discipline_type.save
        format.html { redirect_to @discipline_type, :notice => 'Discipline type was successfully created.' }
        format.json { render :json => @discipline_type, :status => :created, :location => @discipline_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_types/1
  # PUT /discipline_types/1.json
  def update
    @discipline_type = DisciplineType.find(params[:id])

    respond_to do |format|
      if @discipline_type.update_attributes(params[:discipline_type])
        format.html { redirect_to @discipline_type, :notice => 'Discipline type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_types/1
  # DELETE /discipline_types/1.json
  def destroy
    @discipline_type = DisciplineType.find(params[:id])
    @discipline_type.destroy

    respond_to do |format|
      format.html { redirect_to discipline_types_url }
      format.json { head :no_content }
    end
  end
end
