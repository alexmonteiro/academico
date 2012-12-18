class DisciplineClassesController < ApplicationController
  # GET /discipline_classes
  # GET /discipline_classes.json
  def index
    if params[:search]
     @search = DisciplineClass.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 10
     end
     @discipline_classes = @search.results
    else
     if params[:school_class_id] 
      school_class_id =  SchoolClass.find_by_identifier(params[:school_class_id]) || SchoolClass.find(params[:school_class_id])
      @discipline_classes = DisciplineClass.where(:school_class_id => school_class_id).paginate(:page => params[:page], :per_page => 10) 
     else
      @discipline_classes = DisciplineClass.paginate(:page => params[:page], :per_page => 10)
     end
    end    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_classes }
    end
  end

  # GET /discipline_classes/1
  # GET /discipline_classes/1.json
  def show
    @discipline_class = DisciplineClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_class }
      if params[:report_discipline] == "school_class"
        format.pdf do
          pdf = DisciplineClassPDF.new(:discipline_class => @discipline_class, :preenchido => params[:preenchido])
          send_data pdf.render, :filename => "Diário_de_Conteúdo_Ministrado_#{@discipline_class.started_at}#{@discipline_class.code}#{@discipline_class.id}", :type => "application/pdf", :disposition => "inline"
        end
      elsif params[:report_discipline] == "class_record"
        format.pdf do
          pdf = RegistrationClassPdf.new(:discipline_class => @discipline_class, :preenchido => params[:preenchido])
          send_data pdf.render, :filename => "Diário_de_Frequência#{@discipline_class.started_at}#{@discipline_class.code}#{@discipline_class.id}.#{Time.now.strftime("%d%m%Y")}", :type => "application/pdf", :disposition => "inline"
        end
      end
    end
  end

  # GET /discipline_classes/new
  # GET /discipline_classes/new.json
  def new
    if params[:school_class_id] && !params[:school_class_id].blank?
      @school_class = SchoolClass.find_by_identifier(params[:school_class_id]) || SchoolClass.find(params[:school_class_id])
    end

    @discipline_class = DisciplineClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_class }
    end
  end

  # GET /discipline_classes/1/edit
  def edit
    @discipline_class = DisciplineClass.find(params[:id])
  end

  # POST /discipline_classes
  # POST /discipline_classes.json
  def create
    @discipline_class = DisciplineClass.new(params[:discipline_class])
    
    if (params[:school_class_id] && !params[:school_class_id].blank?)
      @school_class = SchoolClass.find_by_identifier(params[:school_class_id]) || SchoolClass.find(params[:school_class_id])
      @discipline_class.school_class_id = @school_class.id
    end    

    respond_to do |format|
      if @discipline_class.save
        format.html { redirect_to request.referer, :notice => 'Classe criada com sucesso.' }
        format.json { render :json => @discipline_class, :status => :created, :location => @discipline_class }
      else
        format.html { render :action => "new"}
        format.json { render :json => @discipline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_classes/1
  # PUT /discipline_classes/1.json
  def update
    @discipline_class = DisciplineClass.find(params[:id])

    respond_to do |format|
      if @discipline_class.update_attributes(params[:discipline_class])
        format.html { redirect_to @discipline_class, :notice => 'Classe atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_classes/1
  # DELETE /discipline_classes/1.json
  def destroy
    @discipline_class = DisciplineClass.find(params[:id])
    if @discipline_class.destroy
      respond_to do |format|
        format.html { redirect_to discipline_classes_url }
        format.json { head :no_content, :notice => 'Classe excluída com sucesso.' }
      end
    else
      error_message = ""
      respond_to do |format|
        @discipline_class.errors[:base].each do |error|
         error_message += "<li>#{error}</li>"
        format.html { redirect_to request.referer, :alert => error_message}
        format.json { render :json => @discipline_class.errors, :status => :unprocessable_entity }
       end
    end
   end
  end

  def update_discipline_select

      disciplinas = SchoolClass.find(params[:id]).course_matrix.matrix_disciplines unless params[:id] == "0"

      
      render :partial => "disciplines", :locals => { :disciplines => disciplinas }      
  end  
end
