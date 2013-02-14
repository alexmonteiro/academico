class StreetTypesController < ApplicationController
  # GET /street_types
  # GET /street_types.json
  def index
    @street_types = StreetType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @street_types }
    end
  end

  # GET /street_types/1
  # GET /street_types/1.json
  def show
    @street_type = StreetType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @street_type }
    end
  end

  # GET /street_types/new
  # GET /street_types/new.json
  def new
    @street_type = StreetType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @street_type }
    end
  end

  # GET /street_types/1/edit
  def edit
    @street_type = StreetType.find(params[:id])
  end

  # POST /street_types
  # POST /street_types.json
  def create
    @street_type = StreetType.new(params[:street_type])

    respond_to do |format|
      if @street_type.save
        format.html { redirect_to @street_type, :notice => 'Logradouro criado com sucesso.' }
        format.json { render :json => @street_type, :status => :created, :location => @street_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @street_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /street_types/1
  # PUT /street_types/1.json
  def update
    @street_type = StreetType.find(params[:id])

    respond_to do |format|
      if @street_type.update_attributes(params[:street_type])
        format.html { redirect_to @street_type, :notice => 'Logradouro atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @street_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /street_types/1
  # DELETE /street_types/1.json
  def destroy
    @street_type = StreetType.find(params[:id])
    @street_type.destroy

    respond_to do |format|
      format.html { redirect_to street_types_url, :notice => 'Logradouro excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
