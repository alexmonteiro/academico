class EducationLevelsController < ApplicationController
  # GET /education_levels
  # GET /education_levels.json
  def index
    @education_levels = EducationLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @education_levels }
    end
  end

  # GET /education_levels/1
  # GET /education_levels/1.json
  def show
    @education_level = EducationLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @education_level }
    end
  end

  # GET /education_levels/new
  # GET /education_levels/new.json
  def new
    @education_level = EducationLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @education_level }
    end
  end

  # GET /education_levels/1/edit
  def edit
    @education_level = EducationLevel.find(params[:id])
  end

  # POST /education_levels
  # POST /education_levels.json
  def create
    @education_level = EducationLevel.new(params[:education_level])

    respond_to do |format|
      if @education_level.save
        format.html { redirect_to @education_level, :notice => t('controllermessage.insert') }
        format.json { render :json => @education_level, :status => :created, :location => @education_level }
      else
        format.html { render :action => "new" }
        format.json { render :json => @education_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education_levels/1
  # PUT /education_levels/1.json
  def update
    @education_level = EducationLevel.find(params[:id])

    respond_to do |format|
      if @education_level.update_attributes(params[:education_level])
        format.html { redirect_to @education_level, :notice => t('controllermessage.update') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @education_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education_levels/1
  # DELETE /education_levels/1.json
  def destroy
    @education_level = EducationLevel.find(params[:id])
    @education_level.destroy

    respond_to do |format|
      format.html { redirect_to education_levels_url, :notice => t('controllermessage.delete') }
      format.json { head :no_content }
    end
  end
end
