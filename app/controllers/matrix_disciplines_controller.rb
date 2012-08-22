class MatrixDisciplinesController < ApplicationController
  # GET /matrix_disciplines
  # GET /matrix_disciplines.json
  def index
    @matrix = Matrix.find(params[:matrix_id])
    @matrix_disciplines = MatrixDiscipline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @matrix_disciplines }
    end
  end

  # GET /matrix_disciplines/1
  # GET /matrix_disciplines/1.json
  def show
    @matrix_discipline = MatrixDiscipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @matrix_discipline }
    end
  end

  # GET /matrix_disciplines/new
  # GET /matrix_disciplines/new.json
  def new
    @matrix = Matrix.find(params[:matrix_id])
    @matrix_discipline = MatrixDiscipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_discipline }
    end
  end

  # GET /matrix_disciplines/1/edit
  def edit
    @matrix_discipline = MatrixDiscipline.find(params[:id])
  end

  # POST /matrix_disciplines
  # POST /matrix_disciplines.json
  def create
    @matrix = Matrix.find(params[:matrix_id])
    @matrix_discipline = MatrixDiscipline.new(params[:matrix_discipline])
    @matrix_discipline.matrix_id = @matrix.id

    respond_to do |format|
      if @matrix_discipline.save
        format.html { redirect_to matrix_matrix_disciplines_path, :notice => 'Matrix discipline was successfully created.' }
        format.json { render :json => @matrix_discipline, :status => :created, :location => @matrix_discipline }
      else
        format.html { render :action => "new" }
        format.json { render :json => @matrix_discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matrix_disciplines/1
  # PUT /matrix_disciplines/1.json
  def update
    @matrix_discipline = MatrixDiscipline.find(params[:id])

    respond_to do |format|
      if @matrix_discipline.update_attributes(params[:matrix_discipline])
        format.html { redirect_to @matrix_discipline, :notice => 'Matrix discipline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @matrix_discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_disciplines/1
  # DELETE /matrix_disciplines/1.json
  def destroy
    @matrix_discipline = MatrixDiscipline.find(params[:id])
    @matrix_discipline.destroy

    respond_to do |format|
      format.html { redirect_to matrix_matrix_disciplines_path }
      format.json { head :no_content }
    end
  end
end
