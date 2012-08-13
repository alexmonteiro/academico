class TechaxesController < ApplicationController
  # GET /techaxes
  # GET /techaxes.json
  def index
    @techaxes = Techaxis.all(:conditions => {:techaxis_type_id => params[:techaxis_type_id]})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @techaxes }
    end
  end

  # GET /techaxes/1
  # GET /techaxes/1.json
  def show
    @techaxis = Techaxis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @techaxis }
    end
  end

  # GET /techaxes/new
  # GET /techaxes/new.json
  def new
    @techaxis = Techaxis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @techaxis }
    end
  end

  # GET /techaxes/1/edit
  def edit
    @techaxis = Techaxis.find(params[:id])
  end

  # POST /techaxes
  # POST /techaxes.json
  def create
    @techaxis = Techaxis.new(params[:techaxis])

    respond_to do |format|
      if @techaxis.save
        format.html { redirect_to @techaxis, :notice => 'Techaxis was successfully created.' }
        format.json { render :json => @techaxis, :status => :created, :location => @techaxis }
      else
        format.html { render :action => "new" }
        format.json { render :json => @techaxis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /techaxes/1
  # PUT /techaxes/1.json
  def update
    @techaxis = Techaxis.find(params[:id])

    respond_to do |format|
      if @techaxis.update_attributes(params[:techaxis])
        format.html { redirect_to @techaxis, :notice => 'Techaxis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @techaxis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /techaxes/1
  # DELETE /techaxes/1.json
  def destroy
    @techaxis = Techaxis.find(params[:id])
    @techaxis.destroy

    respond_to do |format|
      format.html { redirect_to techaxes_url }
      format.json { head :no_content }
    end
  end
end
