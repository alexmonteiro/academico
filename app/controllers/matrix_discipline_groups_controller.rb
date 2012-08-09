class MatrixDisciplineGroupsController < ApplicationController
  # GET /matrix_discipline_groups
  # GET /matrix_discipline_groups.json
  def index
    @matrix_discipline_groups = MatrixDisciplineGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @matrix_discipline_groups }
    end
  end

  # GET /matrix_discipline_groups/1
  # GET /matrix_discipline_groups/1.json
  def show
    @matrix_discipline_group = MatrixDisciplineGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @matrix_discipline_group }
    end
  end

  # GET /matrix_discipline_groups/new
  # GET /matrix_discipline_groups/new.json
  def new
    @matrix_discipline_group = MatrixDisciplineGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_discipline_group }
    end
  end

  # GET /matrix_discipline_groups/1/edit
  def edit
    @matrix_discipline_group = MatrixDisciplineGroup.find(params[:id])
  end

  # POST /matrix_discipline_groups
  # POST /matrix_discipline_groups.json
  def create
    @matrix_discipline_group = MatrixDisciplineGroup.new(params[:matrix_discipline_group])

    respond_to do |format|
      if @matrix_discipline_group.save
        format.html { redirect_to @matrix_discipline_group, :notice => 'Matrix discipline group was successfully created.' }
        format.json { render :json => @matrix_discipline_group, :status => :created, :location => @matrix_discipline_group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @matrix_discipline_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matrix_discipline_groups/1
  # PUT /matrix_discipline_groups/1.json
  def update
    @matrix_discipline_group = MatrixDisciplineGroup.find(params[:id])

    respond_to do |format|
      if @matrix_discipline_group.update_attributes(params[:matrix_discipline_group])
        format.html { redirect_to @matrix_discipline_group, :notice => 'Matrix discipline group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @matrix_discipline_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_discipline_groups/1
  # DELETE /matrix_discipline_groups/1.json
  def destroy
    @matrix_discipline_group = MatrixDisciplineGroup.find(params[:id])
    @matrix_discipline_group.destroy

    respond_to do |format|
      format.html { redirect_to matrix_discipline_groups_url }
      format.json { head :no_content }
    end
  end
end
