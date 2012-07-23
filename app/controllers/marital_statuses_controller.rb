class MaritalStatusesController < ApplicationController
  # GET /marital_statuses
  # GET /marital_statuses.json
  def index
    @marital_statuses = MaritalStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @marital_statuses }
    end
  end

  # GET /marital_statuses/1
  # GET /marital_statuses/1.json
  def show
    @marital_status = MaritalStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @marital_status }
    end
  end

  # GET /marital_statuses/new
  # GET /marital_statuses/new.json
  def new
    @marital_status = MaritalStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @marital_status }
    end
  end

  # GET /marital_statuses/1/edit
  def edit
    @marital_status = MaritalStatus.find(params[:id])
  end

  # POST /marital_statuses
  # POST /marital_statuses.json
  def create
    @marital_status = MaritalStatus.new(params[:marital_status])

    respond_to do |format|
      if @marital_status.save
        format.html { redirect_to @marital_status, :notice => 'Marital status was successfully created.' }
        format.json { render :json => @marital_status, :status => :created, :location => @marital_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @marital_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marital_statuses/1
  # PUT /marital_statuses/1.json
  def update
    @marital_status = MaritalStatus.find(params[:id])

    respond_to do |format|
      if @marital_status.update_attributes(params[:marital_status])
        format.html { redirect_to @marital_status, :notice => 'Marital status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @marital_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marital_statuses/1
  # DELETE /marital_statuses/1.json
  def destroy
    @marital_status = MaritalStatus.find(params[:id])
    @marital_status.destroy

    respond_to do |format|
      format.html { redirect_to marital_statuses_url }
      format.json { head :no_content }
    end
  end
end
