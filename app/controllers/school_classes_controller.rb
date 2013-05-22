class SchoolClassesController < ApplicationController
  load_and_authorize_resource :school_class, :find_by => :identifier
  # GET /school_classes
  # GET /school_classes.json
  def index
    if params[:course_matrix_id]
      if params[:search]
       @search = SchoolClass.search do
         fulltext params[:search]
         paginate :page => params[:page] || 1, :per_page => 10
       end
       @school_classes = @search.results
      else
       @school_classes = SchoolClass.where(:matrix_id => params[:course_matrix_id]).paginate(:page => params[:page], :per_page => 10)
      end

    else
      if params[:search]
       @search = SchoolClass.search do
         fulltext params[:search]
         paginate :page => params[:page] || 1, :per_page => 10
       end
       @school_classes = @search.results
      else
       @school_classes = SchoolClass.paginate(:page => params[:page], :per_page => 10)
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @school_classes }
    end
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    @school_class = SchoolClass.find_by_identifier(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @school_class }
      if params[:type_report] == "ausent_result"
        format.pdf do
          pdf = SchoolClassAusentResultPDF.new(:school_class => @school_class, :preenchido => params[:preenchido])
          send_data pdf.render, :filename => "Resultado_de_Faltas_#{@school_class.period}#{@school_class.id}", :type => "application/pdf", :disposition => "inline"
        end
      end
    end
  end

  # GET /school_classes/new
  # GET /school_classes/new.json
  def new
    @school_class = SchoolClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @school_class }
    end
  end

  # GET /school_classes/1/edit
  def edit
    @school_class = SchoolClass.find_by_identifier(params[:identifier])
  end

  # POST /school_classes
  # POST /school_classes.json
  def create
    @school_class = SchoolClass.new(params[:school_class])
    
    params[:school_class][:opening_at].gsub!("/",".")
    params[:school_class][:closing_at].gsub!("/",".")
    
    #gera identificador único
    if @school_class.identifier.blank?
      if  @school_class.matrix_id && @school_class.period && @school_class.shift_type_id && @school_class.class_season_id
       @school_class.identifier = @school_class.auto_identifier
      end
    end
    
    respond_to do |format|
      if @school_class.save
        format.html { redirect_to school_class_path(:id => @school_class.identifier), :notice => 'Turma criada com sucesso.' }
        format.json { render :json => @school_class, :status => :created, :location => @school_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @school_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /school_classes/1
  # PUT /school_classes/1.json
  def update
    @school_class = SchoolClass.find_by_identifier(params[:school_class][:identifier])
    
    params[:school_class][:opening_at].gsub!("/",".")
    params[:school_class][:closing_at].gsub!("/",".")
    
    respond_to do |format|
      if @school_class.update_attributes(params[:school_class])
        format.html { redirect_to  school_class_path(:id => @school_class.identifier), :notice => 'Turma atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @school_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /school_classes/1
  # DELETE /school_classes/1.json
  def destroy
   @school_class = SchoolClass.find(params[:id])
   if @school_class.destroy
     respond_to do |format|
       format.html { redirect_to school_classes_url, :notice => 'Turma excluida com sucesso.' }
       format.json { head :no_content }
     end
   else
     error_message = ""
     respond_to do |format|
       @school_class.errors[:base].each do |error|
        error_message += "<li>#{error}</li>"
       end
       format.html { redirect_to request.referer, :alert => error_message}
       format.json { render :json => @school_class.errors, :status => :unprocessable_entity }
     end
   end
  end
end
