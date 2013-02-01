class MatrixStatusesController < ApplicationController
  # GET /matrix_statuses
  # GET /matrix_statuses.json
  def index
    @matrix_statuses = MatrixStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @matrix_statuses }
    end
  end

  # GET /matrix_statuses/1
  # GET /matrix_statuses/1.json
  def show
    @matrix_status = MatrixStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @matrix_status }
    end
  end

  # GET /matrix_statuses/new
  # GET /matrix_statuses/new.json
  def new
    @matrix_status = MatrixStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @matrix_status }
    end
  end

  # GET /matrix_statuses/1/edit
  def edit
    @matrix_status = MatrixStatus.find(params[:id])
  end

  # POST /matrix_statuses
  # POST /matrix_statuses.json
  def create
    @matrix_status = MatrixStatus.new(params[:matrix_status])

    respond_to do |format|
      if @matrix_status.save
        format.html { redirect_to @matrix_status, :notice => 'Estado de Matriz criada com sucesso.' }
        format.json { render :json => @matrix_status, :status => :created, :location => @matrix_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @matrix_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matrix_statuses/1
  # PUT /matrix_statuses/1.json
  def update
    @matrix_status = MatrixStatus.find(params[:id])

    respond_to do |format|
      if @matrix_status.update_attributes(params[:matrix_status])
        format.html { redirect_to @matrix_status, :notice => 'Estado de Matriz atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @matrix_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_statuses/1
  # DELETE /matrix_statuses/1.json
  def destroy
    @matrix_status = MatrixStatus.find(params[:id])
    @matrix_status.destroy

    respond_to do |format|
      format.html { redirect_to matrix_statuses_url, :notice => 'Estado de Matriz excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
