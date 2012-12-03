class StatesController < ApplicationController
  # GET /states
  # GET /states.json
  def index
    @country = Country.find(params[:country_id])
    @states = State.where("country_id = ?", params[:country_id])    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @states }
    end
  end

  # GET /states/1
  # GET /states/1.json
  def show
    @state = State.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @state }
    end
  end

  # GET /states/new
  # GET /states/new.json
  def new 
    @country = Country.find(params[:country_id])
    @state = State.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @state }
    end
  end

  # GET /states/1/edit
  def edit
    @state = State.find(params[:id])
    @country = Country.find(@state.country_id)
  end

  # POST /states
  # POST /states.json
  def create
    @state = State.new(params[:state])
    @state.country_id = params[:country_id]

    respond_to do |format|
      if @state.save
        format.html { redirect_to country_states_path, :notice => 'State was successfully created.' }
        format.json { render :json => @state, :status => :created, :location => @state }
      else
        format.html { render :action => "new" }
        format.json { render :json => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /states/1
  # PUT /states/1.json
  def update
    @state = State.find(params[:id])
    
    respond_to do |format|
      if @state.update_attributes(params[:state])
        format.html { redirect_to country_state_path, :notice => 'State was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state = State.find(params[:id])
    @state.destroy

    respond_to do |format|
      format.html { redirect_to country_states_url, :notice => 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
