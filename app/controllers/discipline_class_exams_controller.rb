class DisciplineClassExamsController < ApplicationController
  load_and_authorize_resource :discipline_class
  load_and_authorize_resource :discipline_class_exam, :through => :discipline_class
  # GET /discipline_class_exams
  # GET /discipline_class_exams.json
  def index
    @discipline_class_exams = DisciplineClassExam.where(:discipline_class_id => params[:discipline_class_id])
    
    if params[:discipline_class_id]
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_class_exams }
    end
  end

  # GET /discipline_class_exams/1
  # GET /discipline_class_exams/1.json
  def show
    @discipline_class_exam = DisciplineClassExam.find(params[:id])
    if params[:discipline_class_id]
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_class_exam }
    end
  end

  # GET /discipline_class_exams/new
  # GET /discipline_class_exams/new.json
  def new
    @discipline_class_exam = DisciplineClassExam.new
    if params[:discipline_class_id]
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_class_exam }
    end
  end

  # GET /discipline_class_exams/1/edit
  def edit
    @discipline_class_exam = DisciplineClassExam.find(params[:id])
    if params[:discipline_class_id]
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
  end

  # POST /discipline_class_exams
  # POST /discipline_class_exams.json
  def create
    params[:discipline_class_exam][:applied_at].gsub!('/','-')
    @discipline_class_exam = DisciplineClassExam.new(params[:discipline_class_exam])
    if params[:discipline_class_id]
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
     @discipline_class_exam.discipline_class_id = @discipline_class.id
    end
    
   params[:discipline_class_exam][:applied_at].gsub!("/",".")


    respond_to do |format|
      if @discipline_class_exam.save
        format.html { redirect_to "#{request.referer.gsub('http://','').split('/')[1..-2].map{|item| '/'+item}.join}", :notice => 'Avaliação criada com sucesso.' }
        format.json { render :json => @discipline_class_exam, :status => :created, :location => @discipline_class_exam }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_class_exam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_class_exams/1
  # PUT /discipline_class_exams/1.json
  def update
    @discipline_class_exam = DisciplineClassExam.find(params[:id])
    params[:discipline_class_exam][:applied_at].gsub!('/','-')

    respond_to do |format|
      if @discipline_class_exam.update_attributes(params[:discipline_class_exam])
        format.html { redirect_to "#{request.referer.gsub('http://','').split('/')[1..-3].map{|item| '/'+item}.join}", :notice => 'Avaliação atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_class_exam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_class_exams/1
  # DELETE /discipline_class_exams/1.json
  def destroy
     @discipline_class_exam = DisciplineClassExam.find(params[:id])
     
     if params[:discipline_class_id]
      @discipline_class = DisciplineClass.find(params[:discipline_class_id])
     end
     
     if @discipline_class_exam.destroy
       respond_to do |format|
         format.html { redirect_to "#{request.referer.gsub('http://','').split('/')[1..-1].map{|item| '/'+item}.join}", :notice => 'Avaliação excluída com sucesso.' }
         format.json { head :no_content }
       end
     else
       error_message = ""
       respond_to do |format|
           @discipline_class_exam.errors[:base].each do |error|
            error_message += "<li>#{error}</li>"
           format.html { redirect_to request.referer, :alert => error_message}
           format.json { render :json => @discipline_class_exam.errors, :status => :unprocessable_entity }
          end
       end
     end
  end  
  
  
  
end
