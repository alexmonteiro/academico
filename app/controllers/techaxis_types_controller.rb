class TechaxisTypesController < ApplicationController
  # GET /techaxis_types
  # GET /techaxis_types.json
  def index
    @techaxis_types = TechaxisType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @techaxis_types }
    end
  end

  # GET /techaxis_types/1
  # GET /techaxis_types/1.json
  def show
    @techaxis_type = TechaxisType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @techaxis_type }
    end
  end

  # GET /techaxis_types/new
  # GET /techaxis_types/new.json
  def new
    @techaxis_type = TechaxisType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @techaxis_type }
    end
  end

  # GET /techaxis_types/1/edit
  def edit
    @techaxis_type = TechaxisType.find(params[:id])
  end

  # POST /techaxis_types
  # POST /techaxis_types.json
  def create
    @techaxis_type = TechaxisType.new(params[:techaxis_type])

    respond_to do |format|
      if @techaxis_type.save
        format.html { redirect_to @techaxis_type, :notice => t('controllermessage.insert')  }
        format.json { render :json => @techaxis_type, :status => :created, :location => @techaxis_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @techaxis_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /techaxis_types/1
  # PUT /techaxis_types/1.json
  def update
    @techaxis_type = TechaxisType.find(params[:id])

    respond_to do |format|
      if @techaxis_type.update_attributes(params[:techaxis_type])
        format.html { redirect_to @techaxis_type, :notice => t('controllermessage.update')}
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @techaxis_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /techaxis_types/1
  # DELETE /techaxis_types/1.json
  def destroy
    @techaxis_type = TechaxisType.find(params[:id])
    @techaxis_type.destroy

    respond_to do |format|
      format.html { redirect_to techaxis_types_url, :notice => t('controllermessage.delete') }
      format.json { head :no_content }
    end
  end
end
