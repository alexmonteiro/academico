class MatrixDisciplinePrerequisitesController < ApplicationController
  # GET /matrix_discipline_prerequisites
  # GET /matrix_discipline_prerequisites.json
  def index
    @matrix_discipline = MatrixDiscipline.find(params[:matrix_discipline_id])
    @matrix_discipline_prerequisites = MatrixDisciplinePrerequisite.where(:matrix_discipline_id => @matrix_discipline.id )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @matrix_discipline_prerequisites }
    end
  end


  # GET /matrix_discipline_prerequisites/new
  # GET /matrix_discipline_prerequisites/new.json
  def new
    @course_matrix = CourseMatrix.find(params[:course_matrix_id])
    @matrix_discipline = MatrixDiscipline.find(params[:matrix_discipline_id])
    @matrix_discipline_prerequisite = MatrixDisciplinePrerequisite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_discipline_prerequisite }
    end
  end


  # POST /matrix_discipline_prerequisites
  # POST /matrix_discipline_prerequisites.json
  def create
    @matrix_discipline_prerequisite = MatrixDisciplinePrerequisite.new(params[:matrix_discipline_prerequisite])
    @matrix_discipline_prerequisite.matrix_discipline_id = params[:matrix_discipline_id]

    respond_to do |format|
      if @matrix_discipline_prerequisite.save
        format.html { redirect_to course_matrix_matrix_discipline_matrix_discipline_prerequisites_path, :notice => 'Pré requisito criado com sucesso.' }
        format.json { render :json => @matrix_discipline_prerequisite, :status => :created, :location => @matrix_discipline_prerequisite }
      else
        @course_matrix = CourseMatrix.find(params[:course_matrix_id])
        @matrix_discipline = MatrixDiscipline.find(params[:matrix_discipline_id])
        format.html { render :action => "new" }
        format.json { render :json => @matrix_discipline_prerequisite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_discipline_prerequisites/1
  # DELETE /matrix_discipline_prerequisites/1.json
  def destroy
    @matrix_discipline_prerequisite = MatrixDisciplinePrerequisite.find(params[:id])
    @matrix_discipline_prerequisite.destroy

    respond_to do |format|
      format.html { redirect_to course_matrix_matrix_discipline_matrix_discipline_prerequisites_path, :notice => 'Exclusão realizada com sucesso.' }
      format.json { head :no_content }
    end
  end
end
