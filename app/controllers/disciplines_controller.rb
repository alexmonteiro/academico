class DisciplinesController < ApplicationController
  load_and_authorize_resource
  # GET /disciplines
  # GET /disciplines.json
  def index
    @course = Course.find(params[:course_id])
    @disciplines = Discipline.where(:course_id => params[:course_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @disciplines }
    end
  end

  # GET /disciplines/1
  # GET /disciplines/1.json
  def show
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline }
    end
  end

  # GET /disciplines/new
  # GET /disciplines/new.json
  def new
    @course = Course.find(params[:course_id])
    @discipline = Discipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline }
    end
  end

  # GET /disciplines/1/edit
  def edit
    @course = Course.find(params[:course_id])  
    @discipline = Discipline.find(params[:id])
  end

  # POST /disciplines
  # POST /disciplines.json
  def create
    @course = Course.find(params[:course_id])
    @discipline = Discipline.new(params[:discipline])
    @discipline.course_id = @course.id

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to course_disciplines_path, :notice => "Disciplina #{@discipline.name} criada com sucesso." }
        format.json { render :json => @discipline, :status => :created, :location => @discipline }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines/1
  # PUT /disciplines/1.json
  def update
    @course = Course.find(params[:course_id])  
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(params[:discipline])
        format.html { redirect_to course_disciplines_path, :notice => "Disciplina #{@discipline.name} atualizada com sucesso." }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.json
  def destroy
    @discipline = Discipline.find(params[:id])
    if @discipline.destroy
      respond_to do |format|
        format.html { redirect_to course_disciplines_path, :notice => "Disciplina #{@discipline.name} excluida com sucesso." }
        format.json { head :no_content }
      end
    else
      error_message = ""
        respond_to do |format|
          @discipline.errors[:base].each do |error|
           error_message += "<li>#{error}</li>"
          format.html { redirect_to request.referer, :alert => error_message}
          format.json { render :json => @discipline.errors, :status => :unprocessable_entity }
         end
      end
    end
  end  
  
end
