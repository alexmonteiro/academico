class DisciplineClassExamTypesController < ApplicationController
  # GET /discipline_class_exam_types
  # GET /discipline_class_exam_types.json
  def index
    @discipline_class_exam_types = DisciplineClassExamType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_class_exam_types }
    end
  end

  # GET /discipline_class_exam_types/1
  # GET /discipline_class_exam_types/1.json
  def show
    @discipline_class_exam_type = DisciplineClassExamType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_class_exam_type }
    end
  end

  # GET /discipline_class_exam_types/new
  # GET /discipline_class_exam_types/new.json
  def new
    @discipline_class_exam_type = DisciplineClassExamType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_class_exam_type }
    end
  end

  # GET /discipline_class_exam_types/1/edit
  def edit
    @discipline_class_exam_type = DisciplineClassExamType.find(params[:id])
  end

  # POST /discipline_class_exam_types
  # POST /discipline_class_exam_types.json
  def create
    @discipline_class_exam_type = DisciplineClassExamType.new(params[:discipline_class_exam_type])

    respond_to do |format|
      if @discipline_class_exam_type.save
        format.html { redirect_to @discipline_class_exam_type, :notice => 'Discipline class exam type was successfully created.' }
        format.json { render :json => @discipline_class_exam_type, :status => :created, :location => @discipline_class_exam_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_class_exam_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_class_exam_types/1
  # PUT /discipline_class_exam_types/1.json
  def update
    @discipline_class_exam_type = DisciplineClassExamType.find(params[:id])

    respond_to do |format|
      if @discipline_class_exam_type.update_attributes(params[:discipline_class_exam_type])
        format.html { redirect_to @discipline_class_exam_type, :notice => 'Discipline class exam type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_class_exam_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_class_exam_types/1
  # DELETE /discipline_class_exam_types/1.json
  def destroy
    @discipline_class_exam_type = DisciplineClassExamType.find(params[:id])
    @discipline_class_exam_type.destroy

    respond_to do |format|
      format.html { redirect_to discipline_class_exam_types_url }
      format.json { head :no_content }
    end
  end
end
