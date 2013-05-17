class EquipamentTypesController < ApplicationController
  load_and_authorize_resource
  # GET /equipament_types
  # GET /equipament_types.json
  def index
    @equipament_types = EquipamentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @equipament_types }
    end
  end

  # GET /equipament_types/1
  # GET /equipament_types/1.json
  def show
    @equipament_type = EquipamentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @equipament_type }
    end
  end

  # GET /equipament_types/new
  # GET /equipament_types/new.json
  def new
    @equipament_type = EquipamentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @equipament_type }
    end
  end

  # GET /equipament_types/1/edit
  def edit
    @equipament_type = EquipamentType.find(params[:id])
  end

  # POST /equipament_types
  # POST /equipament_types.json
  def create
    @equipament_type = EquipamentType.new(params[:equipament_type])

    respond_to do |format|
      if @equipament_type.save
        format.html { redirect_to @equipament_type, :notice => 'Tipo de Equipamento criado com sucesso.' }
        format.json { render :json => @equipament_type, :status => :created, :location => @equipament_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @equipament_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /equipament_types/1
  # PUT /equipament_types/1.json
  def update
    @equipament_type = EquipamentType.find(params[:id])

    respond_to do |format|
      if @equipament_type.update_attributes(params[:equipament_type])
        format.html { redirect_to @equipament_type, :notice => 'Tipo de Equipamento atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @equipament_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /equipament_types/1
  # DELETE /equipament_types/1.json
  def destroy
    @equipament_type = EquipamentType.find(params[:id])
    @equipament_type.destroy

    respond_to do |format|
      format.html { redirect_to equipament_types_url, :notice => 'Tipo de Equipamento excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
