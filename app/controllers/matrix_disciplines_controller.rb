class MatrixDisciplinesController < ApplicationController
  # GET /matrix_disciplines
  # GET /matrix_disciplines.json
  def index
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_disciplines = MatrixDiscipline.where(:matrix_id => @matrix.id)

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
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_discipline = MatrixDiscipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_discipline }
    end
  end

  # GET /matrix_disciplines/1/edit
  def edit
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_discipline = MatrixDiscipline.find(params[:id])
  end

  # POST /matrix_disciplines
  # POST /matrix_disciplines.json
  def create
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_discipline = MatrixDiscipline.new(params[:matrix_discipline])
    @matrix_discipline.matrix_id = @matrix.id

    respond_to do |format|
      if @matrix_discipline.save
        format.html { redirect_to matrix_matrix_disciplines_path, :notice => 'Disciplina cadastrada na matriz com sucesso.' }
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
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_discipline = MatrixDiscipline.find(params[:id])

    respond_to do |format|
      if @matrix_discipline.update_attributes(params[:matrix_discipline])
        format.html { redirect_to course_matrix_matrix_discipline_path(:id => @matrix_discipline.id), :notice => 'Disciplina da matriz atualizada com sucesso.' }
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
    if @matrix_discipline.destroy
      respond_to do |format|
        format.html { redirect_to course_matrix_matrix_disciplines_path, :notice => 'Disciplina da matriz excluída com sucesso.' }
        format.json { head :no_content }
      end
    else
      error_message = ""
      respond_to do |format|
        @matrix_discipline.errors[:base].each do |error|
         error_message += "<li>#{error}</li>"
        format.html { redirect_to request.referer, :alert => error_message}
        format.json { render :json => @matrix_discipline.errors, :status => :unprocessable_entity }
       end
      end
    end
    
  end
  
  
end
