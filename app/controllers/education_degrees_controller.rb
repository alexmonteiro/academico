class EducationDegreesController < ApplicationController
  # GET /education_degrees
  # GET /education_degrees.json
  def index
    @education_degrees = EducationDegree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @education_degrees }
    end
  end

  # GET /education_degrees/1
  # GET /education_degrees/1.json
  def show
    @education_degree = EducationDegree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @education_degree }
    end
  end

  # GET /education_degrees/new
  # GET /education_degrees/new.json
  def new
    @education_degree = EducationDegree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @education_degree }
    end
  end

  # GET /education_degrees/1/edit
  def edit
    @education_degree = EducationDegree.find(params[:id])
  end

  # POST /education_degrees
  # POST /education_degrees.json
  def create
    @education_degree = EducationDegree.new(params[:education_degree])

    respond_to do |format|
      if @education_degree.save
        format.html { redirect_to @education_degree, :notice => 'Education degree was successfully created.' }
        format.json { render :json => @education_degree, :status => :created, :location => @education_degree }
      else
        format.html { render :action => "new" }
        format.json { render :json => @education_degree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education_degrees/1
  # PUT /education_degrees/1.json
  def update
    @education_degree = EducationDegree.find(params[:id])

    respond_to do |format|
      if @education_degree.update_attributes(params[:education_degree])
        format.html { redirect_to @education_degree, :notice => 'Education degree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @education_degree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education_degrees/1
  # DELETE /education_degrees/1.json
  def destroy
    @education_degree = EducationDegree.find(params[:id])
    @education_degree.destroy

    respond_to do |format|
      format.html { redirect_to education_degrees_url }
      format.json { head :no_content }
    end
  end
end
