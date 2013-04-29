class PersonPersonTypeDeptsController < ApplicationController
  # GET /person_person_type_depts
  # GET /person_person_type_depts.json
  def index
    @person = Person.find(params[:person_id])
    @person_types =  @person.person_types
    @person_person_type_depts = PersonPersonTypeDept.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @person_person_type_depts }
    end
  end

  # GET /person_person_type_depts/1
  # GET /person_person_type_depts/1.json
  def show
    @person_person_type_dept = PersonPersonTypeDept.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @person_person_type_dept }
    end
  end

  # GET /person_person_type_depts/new
  # GET /person_person_type_depts/new.json
  def new
    @person_person_type_dept = PersonPersonTypeDept.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @person_person_type_dept }
    end
  end

  # GET /person_person_type_depts/1/edit
  def edit
    @person_person_type_dept = PersonPersonTypeDept.find(params[:id])
  end

  # POST /person_person_type_depts
  # POST /person_person_type_depts.json
  def create
    @person_person_type_dept = PersonPersonTypeDept.new(params[:person_person_type_dept])

    respond_to do |format|
      if @person_person_type_dept.save
        format.html { redirect_to @person_person_type_dept, :notice => 'Person person type dept was successfully created.' }
        format.json { render :json => @person_person_type_dept, :status => :created, :location => @person_person_type_dept }
      else
        format.html { render :action => "new" }
        format.json { render :json => @person_person_type_dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /person_person_type_depts/1
  # PUT /person_person_type_depts/1.json
  def update
    @person_person_type_dept = PersonPersonTypeDept.find(params[:id])

    respond_to do |format|
      if @person_person_type_dept.update_attributes(params[:person_person_type_dept])
        format.html { redirect_to @person_person_type_dept, :notice => 'Person person type dept was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @person_person_type_dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /person_person_type_depts/1
  # DELETE /person_person_type_depts/1.json
  def destroy
    @person_person_type_dept = PersonPersonTypeDept.find(params[:id])
    @person_person_type_dept.destroy

    respond_to do |format|
      format.html { redirect_to person_person_type_depts_url }
      format.json { head :no_content }
    end
  end
end
