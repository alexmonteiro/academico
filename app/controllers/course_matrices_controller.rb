class CourseMatricesController < ApplicationController  
# GET /matrices
# GET /matrices.json
def index
  if params[:search]
   @search = CourseMatrix.search do
     fulltext params[:search]
     paginate :page => params[:page] || 1, :per_page => 10
   end
   @matrices = @search.results
  else
   @matrices = CourseMatrix.paginate(:page => params[:page], :per_page => 10)

  end

  respond_to do |format|
    format.html # index.html.erb
    format.json { render :json => @matrices }
  end
end

# GET /matrices/1
# GET /matrices/1.json
def show
  @matrix = CourseMatrix.find(params[:id])

  respond_to do |format|
    format.html # show.html.erb
    format.json { render :json => @matrix }
    controller_name.singularize
  end
end

# GET /matrices/new
# GET /matrices/new.json
def new
  @matrix = CourseMatrix.new

  respond_to do |format|
    format.html # new.html.erb
    format.json { render :json => @matrix }
  end
end

# GET /matrices/1/edit
def edit
  @matrix = CourseMatrix.find(params[:id])
end

# POST /matrices
# POST /matrices.json
def create
  @matrix = CourseMatrix.new(params[:course_matrix])

  respond_to do |format|
    if @matrix.save
      format.html { redirect_to @matrix, :notice => 'Matriz criada com sucesso.' }
      format.json { render :json => @matrix, :status => :created, :location => @matrix }
    else
      format.html { render :action => "new" }
      format.json { render :json => @matrix.errors, :status => :unprocessable_entity }
    end
  end
end

# PUT /matrices/1
# PUT /matrices/1.json
def update
  @matrix = CourseMatrix.find(params[:id])

  respond_to do |format|
    if @matrix.update_attributes(params[:matrix])
      format.html { redirect_to @matrix, :notice => 'Matriz atualizada com sucesso.' }
      format.json { head :no_content }
    else
      format.html { render :action => "edit" }
      format.json { render :json => @matrix.errors, :status => :unprocessable_entity }
    end
  end
end

# DELETE /matrices/1
# DELETE /matrices/1.json
def destroy
  @matrix = CourseMatrix.find(params[:id])
  if @matrix.destroy
    respond_to do |format|
      format.html { redirect_to course_matrices_url, :notice => 'Matriz excluída com sucesso.'  }
      format.json { head :no_content }
    end
  else
    error_message = ""
    respond_to do |format|
      @matrix.errors[:base].each do |error|
       error_message += "<li>#{error}</li>"
      format.html { redirect_to request.referer, :alert => error_message}
      format.json { render :json => @matrix.errors, :status => :unprocessable_entity }
     end
    end
  end  
  
end

end
