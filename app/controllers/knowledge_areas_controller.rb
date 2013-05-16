class KnowledgeAreasController < ApplicationController
  load_and_authorize_resource
  # GET /knowledge_areas
  # GET /knowledge_areas.json
  def index
    @knowledge_areas = KnowledgeArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @knowledge_areas }
    end
  end

  # GET /knowledge_areas/1
  # GET /knowledge_areas/1.json
  def show
    @knowledge_area = KnowledgeArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @knowledge_area }
    end
  end

  # GET /knowledge_areas/new
  # GET /knowledge_areas/new.json
  def new
    @knowledge_area = KnowledgeArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @knowledge_area }
    end
  end

  # GET /knowledge_areas/1/edit
  def edit
    @knowledge_area = KnowledgeArea.find(params[:id])
  end

  # POST /knowledge_areas
  # POST /knowledge_areas.json
  def create
    @knowledge_area = KnowledgeArea.new(params[:knowledge_area])

    respond_to do |format|
      if @knowledge_area.save
        format.html { redirect_to @knowledge_area, :notice => 'Área do conhecimento criada com sucesso.' }
        format.json { render :json => @knowledge_area, :status => :created, :location => @knowledge_area }
      else
        format.html { render :action => "new" }
        format.json { render :json => @knowledge_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /knowledge_areas/1
  # PUT /knowledge_areas/1.json
  def update
    @knowledge_area = KnowledgeArea.find(params[:id])

    respond_to do |format|
      if @knowledge_area.update_attributes(params[:knowledge_area])
        format.html { redirect_to @knowledge_area, :notice => 'Área do conhecimento atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @knowledge_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledge_areas/1
  # DELETE /knowledge_areas/1.json
  def destroy
    @knowledge_area = KnowledgeArea.find(params[:id])
    @knowledge_area.destroy

    respond_to do |format|
      format.html { redirect_to knowledge_areas_url, :notice => 'Área do conhecimento excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
