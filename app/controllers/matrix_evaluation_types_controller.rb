class MatrixEvaluationTypesController < ApplicationController
  load_and_authorize_resource
  # GET /matrix_evaluation_types
  # GET /matrix_evaluation_types.json
  def index
    @matrix_evaluation_types = MatrixEvaluationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @matrix_evaluation_types }
    end
  end

  # GET /matrix_evaluation_types/1
  # GET /matrix_evaluation_types/1.json
  def show
    @matrix_evaluation_type = MatrixEvaluationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @matrix_evaluation_type }
    end
  end

  # GET /matrix_evaluation_types/new
  # GET /matrix_evaluation_types/new.json
  def new
    @matrix_evaluation_type = MatrixEvaluationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_evaluation_type }
    end
  end

  # GET /matrix_evaluation_types/1/edit
  def edit
    @matrix_evaluation_type = MatrixEvaluationType.find(params[:id])
  end

  # POST /matrix_evaluation_types
  # POST /matrix_evaluation_types.json
  def create
    @matrix_evaluation_type = MatrixEvaluationType.new(params[:matrix_evaluation_type])

    respond_to do |format|
      if @matrix_evaluation_type.save
        format.html { redirect_to @matrix_evaluation_type, :notice => 'Avaliação de Matriz criada com sucesso.' }
        format.json { render :json => @matrix_evaluation_type, :status => :created, :location => @matrix_evaluation_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @matrix_evaluation_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matrix_evaluation_types/1
  # PUT /matrix_evaluation_types/1.json
  def update
    @matrix_evaluation_type = MatrixEvaluationType.find(params[:id])

    respond_to do |format|
      if @matrix_evaluation_type.update_attributes(params[:matrix_evaluation_type])
        format.html { redirect_to @matrix_evaluation_type, :notice => 'Avaliação de Matriz atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @matrix_evaluation_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_evaluation_types/1
  # DELETE /matrix_evaluation_types/1.json
  def destroy
    @matrix_evaluation_type = MatrixEvaluationType.find(params[:id])
    @matrix_evaluation_type.destroy

    respond_to do |format|
      format.html { redirect_to matrix_evaluation_types_url, :notice => 'Avaliação de Matriz excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
