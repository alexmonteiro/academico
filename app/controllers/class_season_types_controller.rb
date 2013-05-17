class ClassSeasonTypesController < ApplicationController
  load_and_authorize_resource
  # GET /class_season_types
  # GET /class_season_types.json
  def index
    @class_season_types = ClassSeasonType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_season_types }
    end
  end

  # GET /class_season_types/1
  # GET /class_season_types/1.json
  def show
    @class_season_type = ClassSeasonType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_season_type }
    end
  end

  # GET /class_season_types/new
  # GET /class_season_types/new.json
  def new
    @class_season_type = ClassSeasonType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_season_type }
    end
  end

  # GET /class_season_types/1/edit
  def edit
    @class_season_type = ClassSeasonType.find(params[:id])
  end

  # POST /class_season_types
  # POST /class_season_types.json
  def create
    @class_season_type = ClassSeasonType.new(params[:class_season_type])

    respond_to do |format|
      if @class_season_type.save
        format.html { redirect_to @class_season_type, :notice => 'Tipo de temporada criada com sucesso.' }
        format.json { render :json => @class_season_type, :status => :created, :location => @class_season_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_season_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_season_types/1
  # PUT /class_season_types/1.json
  def update
    @class_season_type = ClassSeasonType.find(params[:id])

    respond_to do |format|
      if @class_season_type.update_attributes(params[:class_season_type])
        format.html { redirect_to @class_season_type, :notice => 'Tipo de temporada atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_season_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_season_types/1
  # DELETE /class_season_types/1.json
  def destroy
    @class_season_type = ClassSeasonType.find(params[:id])
    @class_season_type.destroy

    respond_to do |format|
      format.html { redirect_to class_season_types_url, :notice => 'Tipo de temporada excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
