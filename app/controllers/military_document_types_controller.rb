class MilitaryDocumentTypesController < ApplicationController
  load_and_authorize_resource
  # GET /military_document_types
  # GET /military_document_types.json
  def index
    @military_document_types = MilitaryDocumentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @military_document_types }
    end
  end

  # GET /military_document_types/1
  # GET /military_document_types/1.json
  def show
    @military_document_type = MilitaryDocumentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @military_document_type }
    end
  end

  # GET /military_document_types/new
  # GET /military_document_types/new.json
  def new
    @military_document_type = MilitaryDocumentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @military_document_type }
    end
  end

  # GET /military_document_types/1/edit
  def edit
    @military_document_type = MilitaryDocumentType.find(params[:id])
  end

  # POST /military_document_types
  # POST /military_document_types.json
  def create
    @military_document_type = MilitaryDocumentType.new(params[:military_document_type])

    respond_to do |format|
      if @military_document_type.save
        format.html { redirect_to @military_document_type, :notice => 'Tipo de Documento Militar criado com sucesso.' }
        format.json { render :json => @military_document_type, :status => :created, :location => @military_document_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @military_document_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /military_document_types/1
  # PUT /military_document_types/1.json
  def update
    @military_document_type = MilitaryDocumentType.find(params[:id])

    respond_to do |format|
      if @military_document_type.update_attributes(params[:military_document_type])
        format.html { redirect_to @military_document_type, :notice => 'Tipo de Documento Militar atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @military_document_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /military_document_types/1
  # DELETE /military_document_types/1.json
  def destroy
    @military_document_type = MilitaryDocumentType.find(params[:id])
    @military_document_type.destroy

    respond_to do |format|
      format.html { redirect_to military_document_types_url, :notice => 'Tipo de Documento Militar excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
