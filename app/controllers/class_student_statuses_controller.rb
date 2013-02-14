class ClassStudentStatusesController < ApplicationController
  # GET /class_student_statuses
  # GET /class_student_statuses.json
  def index
    @class_student_statuses = ClassStudentStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_student_statuses }
    end
  end

  # GET /class_student_statuses/1
  # GET /class_student_statuses/1.json
  def show
    @class_student_status = ClassStudentStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_student_status }
    end
  end

  # GET /class_student_statuses/new
  # GET /class_student_statuses/new.json
  def new
    @class_student_status = ClassStudentStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_student_status }
    end
  end

  # GET /class_student_statuses/1/edit
  def edit
    @class_student_status = ClassStudentStatus.find(params[:id])
  end

  # POST /class_student_statuses
  # POST /class_student_statuses.json
  def create
    @class_student_status = ClassStudentStatus.new(params[:class_student_status])

    respond_to do |format|
      if @class_student_status.save
        format.html { redirect_to @class_student_status, :notice => 'Estado de Classe do Estudante criado com sucesso.' }
        format.json { render :json => @class_student_status, :status => :created, :location => @class_student_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_student_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_student_statuses/1
  # PUT /class_student_statuses/1.json
  def update
    @class_student_status = ClassStudentStatus.find(params[:id])

    respond_to do |format|
      if @class_student_status.update_attributes(params[:class_student_status])
        format.html { redirect_to @class_student_status, :notice => 'Estado de Classe do Estudante atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_student_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_student_statuses/1
  # DELETE /class_student_statuses/1.json
  def destroy
    @class_student_status = ClassStudentStatus.find(params[:id])
    @class_student_status.destroy

    respond_to do |format|
      format.html { redirect_to class_student_statuses_url, :notice => 'Estado de Classe de Estudante excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
