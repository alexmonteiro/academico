class DisciplineClassExamResultsController < ApplicationController
  # GET /discipline_class_exam_results
  # GET /discipline_class_exam_results.json
  def index
    @discipline_class_exam_results = DisciplineClassExamResult.where(:discipline_class_exam_id => params[:discipline_class_exam_id])
    @discipline_class_exam = DisciplineClassExam.find( params[:discipline_class_exam_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_class_exam_results }
    end
  end

  # GET /discipline_class_exam_results/1
  # GET /discipline_class_exam_results/1.json
  def show
    @discipline_class_exam_result = DisciplineClassExamResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_class_exam_result }
    end
  end

  # GET /discipline_class_exam_results/new
  # GET /discipline_class_exam_results/new.json
  def new
    @discipline_class_exam_result = DisciplineClassExamResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_class_exam_result }
    end
  end

  # GET /discipline_class_exam_results/1/edit
  def edit
    @discipline_class_exam_result = DisciplineClassExamResult.find(params[:id])
  end

  # POST /discipline_class_exam_results
  # POST /discipline_class_exam_results.json
  def create
    @discipline_class_exam_result = DisciplineClassExamResult.new(params[:discipline_class_exam_result])

    respond_to do |format|
      if @discipline_class_exam_result.save
        format.html { redirect_to @discipline_class_exam_result, :notice => 'Discipline class exam result was successfully created.' }
        format.json { render :json => @discipline_class_exam_result, :status => :created, :location => @discipline_class_exam_result }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_class_exam_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_class_exam_results/1
  # PUT /discipline_class_exam_results/1.json
  def update
    @discipline_class_exam_result = DisciplineClassExamResult.find(params[:id])

    respond_to do |format|
      if @discipline_class_exam_result.update_attributes(params[:discipline_class_exam_result])
        format.html { redirect_to @discipline_class_exam_result, :notice => 'Discipline class exam result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_class_exam_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_class_exam_results/1
  # DELETE /discipline_class_exam_results/1.json
  def destroy
    @discipline_class_exam_result = DisciplineClassExamResult.find(params[:id])
    @discipline_class_exam_result.destroy

    respond_to do |format|
      format.html { redirect_to discipline_class_discipline_class_exam_discipline_class_exam_results_url }
      format.json { head :no_content }
    end
  end

  def import_registration_to_exam_result
    @discipline_class_exam = DisciplineClassExam.find(params[:discipline_class_exam_id])
    @discipline_class_exam.discipline_class.registration_classes.each do |enturmation|      
      emxa_resulta = DisciplineClassExamResult.find_or_initialize_by_registration_class_id_and_discipline_class_exam_id(enturmation.id, @discipline_class_exam.id) do |p|
          p.result = 0.0
          p.save!
      end
    end

    redirect_to discipline_class_discipline_class_exam_discipline_class_exam_results_path(@discipline_class_exam), :notice => 'Importação realizada com sucesso.'
  end  
end
