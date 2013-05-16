class GendersController < ApplicationController
  load_and_authorize_resource
  # GET /genders
  # GET /genders.json
  def index
    @genders = Gender.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @genders }
    end
  end

  # GET /genders/1
  # GET /genders/1.json
  def show
    @gender = Gender.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gender }
    end
  end

  # GET /genders/new
  # GET /genders/new.json
  def new
    @gender = Gender.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gender }
    end
  end

  # GET /genders/1/edit
  def edit
    @gender = Gender.find(params[:id])
  end

  # POST /genders
  # POST /genders.json
  def create
    @gender = Gender.new(params[:gender])

    respond_to do |format|
      if @gender.save
        format.html { redirect_to @gender, :notice => t('controllermessage.insert') }
        format.json { render :json => @gender, :status => :created, :location => @gender }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gender.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /genders/1
  # PUT /genders/1.json
  def update
    @gender = Gender.find(params[:id])

    respond_to do |format|
      if @gender.update_attributes(params[:gender])
        format.html { redirect_to @gender, :notice => t('controllermessage.update') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gender.errors, :status => :unprocessable_entity }
      end
    end
  end  

  # DELETE /genders/1
  # DELETE /genders/1.json
  def destroy
    @gender = Gender.find(params[:id])
    @gender.destroy

    respond_to do |format|
      format.html { redirect_to genders_url, :notice => t('controllermessage.delete') }
      format.json { head :no_content }
    end
  end
end
