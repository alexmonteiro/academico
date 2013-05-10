class PrecedenceSchoolsController < ApplicationController
  # GET /precedence_schools
  # GET /precedence_schools.json
  def index
    @precedence_schools = PrecedenceSchool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @precedence_schools }
    end
  end

  # GET /precedence_schools/1
  # GET /precedence_schools/1.json
  def show
    @precedence_school = PrecedenceSchool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @precedence_school }
    end
  end

  # GET /precedence_schools/new
  # GET /precedence_schools/new.json
  def new
    @precedence_school = PrecedenceSchool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @precedence_school }
    end
  end

  # GET /precedence_schools/1/edit
  def edit
    @precedence_school = PrecedenceSchool.find(params[:id])
  end

  # POST /precedence_schools
  # POST /precedence_schools.json
  def create
    @precedence_school = PrecedenceSchool.new(params[:precedence_school])

    respond_to do |format|
      if @precedence_school.save
        format.html { redirect_to @precedence_school, :notice => 'Precedence school was successfully created.' }
        format.json { render :json => @precedence_school, :status => :created, :location => @precedence_school }
      else
        format.html { render :action => "new" }
        format.json { render :json => @precedence_school.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /precedence_schools/1
  # PUT /precedence_schools/1.json
  def update
    @precedence_school = PrecedenceSchool.find(params[:id])

    respond_to do |format|
      if @precedence_school.update_attributes(params[:precedence_school])
        format.html { redirect_to @precedence_school, :notice => 'Precedence school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @precedence_school.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /precedence_schools/1
  # DELETE /precedence_schools/1.json
  def destroy
    @precedence_school = PrecedenceSchool.find(params[:id])
    @precedence_school.destroy

    respond_to do |format|
      format.html { redirect_to precedence_schools_url }
      format.json { head :no_content }
    end
  end
end
