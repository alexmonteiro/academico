class ProvenanceAreasController < ApplicationController
  load_and_authorize_resource
  # GET /provenance_areas
  # GET /provenance_areas.json
  def index
    @provenance_areas = ProvenanceArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @provenance_areas }
    end
  end

  # GET /provenance_areas/1
  # GET /provenance_areas/1.json
  def show
    @provenance_area = ProvenanceArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @provenance_area }
    end
  end

  # GET /provenance_areas/new
  # GET /provenance_areas/new.json
  def new
    @provenance_area = ProvenanceArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @provenance_area }
    end
  end

  # GET /provenance_areas/1/edit
  def edit
    @provenance_area = ProvenanceArea.find(params[:id])
  end

  # POST /provenance_areas
  # POST /provenance_areas.json
  def create
    @provenance_area = ProvenanceArea.new(params[:provenance_area])

    respond_to do |format|
      if @provenance_area.save
        format.html { redirect_to @provenance_area, :notice => 'Área de procedência criada com sucesso.' }
        format.json { render :json => @provenance_area, :status => :created, :location => @provenance_area }
      else
        format.html { render :action => "new" }
        format.json { render :json => @provenance_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provenance_areas/1
  # PUT /provenance_areas/1.json
  def update
    @provenance_area = ProvenanceArea.find(params[:id])

    respond_to do |format|
      if @provenance_area.update_attributes(params[:provenance_area])
        format.html { redirect_to @provenance_area, :notice => 'Área de procedência atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @provenance_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provenance_areas/1
  # DELETE /provenance_areas/1.json
  def destroy
    @provenance_area = ProvenanceArea.find(params[:id])
    @provenance_area.destroy

    respond_to do |format|
      format.html { redirect_to provenance_areas_url, :notice => 'Área de procedência excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
