class ClassSeasonsController < ApplicationController
  # GET /class_seasons
  # GET /class_seasons.json
  def index
    @class_seasons = ClassSeason.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_seasons }
    end
  end

  # GET /class_seasons/1
  # GET /class_seasons/1.json
  def show
    @class_season = ClassSeason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_season }
    end
  end

  # GET /class_seasons/new
  # GET /class_seasons/new.json
  def new
    @class_season = ClassSeason.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_season }
    end
  end

  # GET /class_seasons/1/edit
  def edit
    @class_season = ClassSeason.find(params[:id])
  end

  # POST /class_seasons
  # POST /class_seasons.json
  def create
    @class_season = ClassSeason.new(params[:class_season])
    
    
    #comando para transformar as "/" para "." pois o sistema nao le com "/"
    params[:class_season][:start_at].gsub!("/",".")
    params[:class_season][:end_at].gsub!("/",".")

    respond_to do |format|
      if @class_season.save
        format.html { redirect_to @class_season, :notice => 'Temporada criada com sucesso.' }
        format.json { render :json => @class_season, :status => :created, :location => @class_season }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_season.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_seasons/1
  # PUT /class_seasons/1.json
  def update
    @class_season = ClassSeason.find(params[:id])
    
    #comando para transformar as "/" para "." pois o sistema nao le com "/"
    params[:class_season][:start_at].gsub!("/",".")
    params[:class_season][:end_at].gsub!("/",".")
    
    respond_to do |format|
      if @class_season.update_attributes(params[:class_season])
        format.html { redirect_to @class_season, :notice => 'Temporada atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_season.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_seasons/1
  # DELETE /class_seasons/1.json
  def destroy
    @class_season = ClassSeason.find(params[:id])
    @class_season.destroy

    respond_to do |format|
      format.html { redirect_to class_seasons_url, :notice => 'Temporada excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end