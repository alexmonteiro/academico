class DeptsController < ApplicationController
  # GET /depts
  # GET /depts.json
  def index
    if params[:search]
     @search = Dept.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 10
     end
     @depts = @search.results
    else
     @depts = Dept.paginate(:page => params[:page], :per_page => 10)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @depts }
    end
  end

  # GET /depts/1
  # GET /depts/1.json
  def show
    @dept = Dept.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dept }
    end
  end

  # GET /depts/new
  # GET /depts/new.json
  def new
    @dept = Dept.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dept }
    end
  end

  # GET /depts/1/edit
  def edit
    @dept = Dept.find(params[:id])
  end

  # POST /depts
  # POST /depts.json
  def create
    @dept = Dept.new(params[:dept])

    respond_to do |format|
      if @dept.save
        format.html { redirect_to @dept, :notice => 'Dept was successfully created.' }
        format.json { render :json => @dept, :status => :created, :location => @dept }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /depts/1
  # PUT /depts/1.json
  def update
    @dept = Dept.find(params[:id])

    respond_to do |format|
      if @dept.update_attributes(params[:dept])
        format.html { redirect_to @dept, :notice => 'Dept was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /depts/1
  # DELETE /depts/1.json
  def destroy
    @dept = Dept.find(params[:id])
    @dept.destroy

    respond_to do |format|
      format.html { redirect_to depts_url }
      format.json { head :no_content }
    end
  end
end
