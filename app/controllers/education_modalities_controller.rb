class EducationModalitiesController < ApplicationController
  load_and_authorize_resource
  # GET /education_modalities
  # GET /education_modalities.json
  def index
    @education_modalities = EducationModality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @education_modalities }
    end
  end

  # GET /education_modalities/1
  # GET /education_modalities/1.json
  def show
    @education_modality = EducationModality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @education_modality }
    end
  end

  # GET /education_modalities/new
  # GET /education_modalities/new.json
  def new
    @education_modality = EducationModality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @education_modality }
    end
  end

  # GET /education_modalities/1/edit
  def edit
    @education_modality = EducationModality.find(params[:id])
  end

  # POST /education_modalities
  # POST /education_modalities.json
  def create
    @education_modality = EducationModality.new(params[:education_modality])
    
    respond_to do |format|
      if @education_modality.save
        format.html { redirect_to @education_modality, :notice => t('controllermessage.insert') }
        format.json { render :json => @education_modality, :status => :created, :location => @education_modality }
      else
        format.html { render :action => "new" }
        format.json { render :json => @education_modality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education_modalities/1
  # PUT /education_modalities/1.json
  def update
    @education_modality = EducationModality.find(params[:id])

    respond_to do |format|
      if @education_modality.update_attributes(params[:education_modality])
        format.html { redirect_to @education_modality, :notice => t('controllermessage.update') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @education_modality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education_modalities/1
  # DELETE /education_modalities/1.json
  def destroy
    @education_modality = EducationModality.find(params[:id])
    @education_modality.destroy

    respond_to do |format|
      format.html { redirect_to education_modalities_url, :notice => t('controllermessage.delete') }
      format.json { head :no_content }
    end
  end
end
