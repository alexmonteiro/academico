class TechaxesController < ApplicationController
  # GET /techaxes
  # GET /techaxes.json
  def index
    @techaxis_type = TechaxisType.find(params[:techaxis_type_id])
    @techaxes = Techaxis.where("techaxis_type_id = ?", params[:techaxis_type_id])
     
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
    @techaxis_type = TechaxisType.find(params[:techaxis_type_id])
    @techaxis = Techaxis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @techaxis }
    end
  end

  # GET /techaxes/1/edit
  def edit
    @techaxis = Techaxis.find(params[:id])
    @techaxis_type = TechaxisType.find(params[:techaxis_type_id])
  end

  # POST /techaxes
  # POST /techaxes.json
  def create
    @techaxis = Techaxis.new(params[:techaxis])
    @techaxis.techaxis_type_id = params[:techaxis_type_id]
    
    respond_to do |format|
      if @techaxis.save
        format.html { redirect_to techaxis_type_techaxes_path, :notice => t('controllermessage.insert') }
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
        format.html { redirect_to techaxis_type_techaxis_path, :notice => t('controllermessage.update') }
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
      format.html { redirect_to techaxis_type_techaxis_url, :notice => t('controllermessage.delete') }
      format.json { head :no_content }
    end
  end
end
