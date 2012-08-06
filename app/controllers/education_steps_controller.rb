class EducationStepsController < ApplicationController
  # GET /education_steps
  # GET /education_steps.json
  def index
    @education_steps = EducationStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @education_steps }
    end
  end

  # GET /education_steps/1
  # GET /education_steps/1.json
  def show
    @education_step = EducationStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @education_step }
    end
  end

  # GET /education_steps/new
  # GET /education_steps/new.json
  def new
    @education_step = EducationStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @education_step }
    end
  end

  # GET /education_steps/1/edit
  def edit
    @education_step = EducationStep.find(params[:id])
  end

  # POST /education_steps
  # POST /education_steps.json
  def create
    @education_step = EducationStep.new(params[:education_step])

    respond_to do |format|
      if @education_step.save
        format.html { redirect_to @education_step, :notice => 'Education step was successfully created.' }
        format.json { render :json => @education_step, :status => :created, :location => @education_step }
      else
        format.html { render :action => "new" }
        format.json { render :json => @education_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education_steps/1
  # PUT /education_steps/1.json
  def update
    @education_step = EducationStep.find(params[:id])

    respond_to do |format|
      if @education_step.update_attributes(params[:education_step])
        format.html { redirect_to @education_step, :notice => 'Education step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @education_step.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education_steps/1
  # DELETE /education_steps/1.json
  def destroy
    @education_step = EducationStep.find(params[:id])
    @education_step.destroy

    respond_to do |format|
      format.html { redirect_to education_steps_url }
      format.json { head :no_content }
    end
  end
end
