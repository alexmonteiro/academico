class LearningModalitiesController < ApplicationController
  load_and_authorize_resource
  # GET /learning_modalities
  # GET /learning_modalities.json
  def index
    @learning_modalities = LearningModality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @learning_modalities }
    end
  end

  # GET /learning_modalities/1
  # GET /learning_modalities/1.json
  def show
    @learning_modality = LearningModality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @learning_modality }
    end
  end

  # GET /learning_modalities/new
  # GET /learning_modalities/new.json
  def new
    @learning_modality = LearningModality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @learning_modality }
    end
  end

  # GET /learning_modalities/1/edit
  def edit
    @learning_modality = LearningModality.find(params[:id])
  end

  # POST /learning_modalities
  # POST /learning_modalities.json
  def create
    @learning_modality = LearningModality.new(params[:learning_modality])

    respond_to do |format|
      if @learning_modality.save
        format.html { redirect_to @learning_modality, :notice => 'Modalidade de aprendizagem criada com sucesso.' }
        format.json { render :json => @learning_modality, :status => :created, :location => @learning_modality }
      else
        format.html { render :action => "new" }
        format.json { render :json => @learning_modality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /learning_modalities/1
  # PUT /learning_modalities/1.json
  def update
    @learning_modality = LearningModality.find(params[:id])

    respond_to do |format|
      if @learning_modality.update_attributes(params[:learning_modality])
        format.html { redirect_to @learning_modality, :notice => 'Modalidade de aprendizagem atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @learning_modality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_modalities/1
  # DELETE /learning_modalities/1.json
  def destroy
    @learning_modality = LearningModality.find(params[:id])
    if @learning_modality.destroy
      respond_to do |format|
        format.html { redirect_to learning_modalities_url, :notice => "Modalidade de aprendizagem excluída com sucesso." }
        format.json { head :no_content }
      end
    else
      error_message = ""
      respond_to do |format|
        @learning_modality.errors[:base].each do |error|
         error_message += "<li>#{error}</li>"
        format.html { redirect_to request.referer, :alert => error_message}
        format.json { render :json => @learning_modality.errors, :status => :unprocessable_entity }
       end
    end
   end
  end
end
