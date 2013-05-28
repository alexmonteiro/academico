class CitiesController < ApplicationController
  load_and_authorize_resource
  # GET /cities
  # GET /cities.json
  def index
    @state = State.find(params[:state_id])
    @cities = City.where(:state_id => params[:state_id]).paginate(:page => params[:page], :per_page => 10, :order => 'name')
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @city = City.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @city }
    end
  end

  # GET /cities/new
  # GET /cities/new.json
  def new
    @country = Country.find(params[:country_id])
    @state = State.find(params[:state_id])
    @city = City.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @city }
    end
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])
    @state = State.find(@city.state_id)
    @country = Country.find(@state.country_id)
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(params[:city])
    @city.state_id = params[:state_id]
    
    respond_to do |format|
      if @city.save
        format.html { redirect_to country_state_cities_path, :notice => t('controller_message.inserted') }
        format.json { render :json => @city, :status => :created, :location => @city }
      else
        @state = State.find(params[:state_id])
        @country = Country.find(@state.country_id)
        format.html { render :action => "new" }
        format.json { render :json => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.json
  def update
    @city = City.find(params[:id])

    respond_to do |format|
      if @city.update_attributes(params[:city])
        format.html { redirect_to country_state_city_path, :notice => t('controller_message.updated') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to country_state_cities_url, :notice => t('controller_message.deleted') }
      format.json { head :no_content }
    end
  end
  
  def update_city_select
      cities = City.where(:state_id=>params[:id]).order(:name) unless params[:id].blank?
      render :partial => "cities", :locals => { :cities => cities }
  end

  def autocomplete_city_name
    @cities = City.select("id, name").where("name LIKE ?", "#{params[:name]}%").order(:name).limit(10)

    respond_to do |format|
      format.json { render :json => @cities , :only => [:id, :name] }
    end
  end
  
end
