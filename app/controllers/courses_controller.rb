class CoursesController < ApplicationController
  load_and_authorize_resource
  # GET /courses
  # GET /courses.json
  def index
    if params[:search]
     @search = Course.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 10
     end
     @courses = @search.results
    else
     @courses = Course.paginate(:page => params[:page], :per_page => 10)
    end
    
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course }
      format.pdf do
        #pdf = Prawn::Document.new
        pdf = CoursePdf.new(@course)
        send_data pdf.render, :filename => "curso_#{@course.id}", :type => "application/pdf", :template => "#{Rails.root}/app/pdfs/templates/full_template.pdf"#, :disposition => "inline"
      end
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, :notice => 'Curso criado com sucesso.' }
        format.json { render :json => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, :notice => 'Curso atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      respond_to do |format|
        format.html { redirect_to courses_url, :notice => 'Curso excluído com sucesso.' }
        format.json { head :no_content }
      end
    else
      error_message = ""
      respond_to do |format|
        @course.errors[:base].each do |error|
         error_message += "<li>#{error}</li>"
        format.html { redirect_to request.referer, :alert => error_message}
        format.json { render :json => @course.errors, :status => :unprocessable_entity }
       end
    end
   end
  end  
  
  
end
