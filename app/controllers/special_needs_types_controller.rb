class SpecialNeedsTypesController < ApplicationController
  # GET /special_needs_types
  # GET /special_needs_types.json
  def index
    @special_needs_types = SpecialNeedsType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @special_needs_types }
    end
  end

  # GET /special_needs_types/1
  # GET /special_needs_types/1.json
  def show
    @special_needs_type = SpecialNeedsType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @special_needs_type }
    end
  end

  # GET /special_needs_types/new
  # GET /special_needs_types/new.json
  def new
    @special_needs_type = SpecialNeedsType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @special_needs_type }
    end
  end

  # GET /special_needs_types/1/edit
  def edit
    @special_needs_type = SpecialNeedsType.find(params[:id])
  end

  # POST /special_needs_types
  # POST /special_needs_types.json
  def create
    @special_needs_type = SpecialNeedsType.new(params[:special_needs_type])

    respond_to do |format|
      if @special_needs_type.save
        format.html { redirect_to @special_needs_type, :notice => 'Tipo de necessidade especial criada com sucesso.' }
        format.json { render :json => @special_needs_type, :status => :created, :location => @special_needs_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @special_needs_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /special_needs_types/1
  # PUT /special_needs_types/1.json
  def update
    @special_needs_type = SpecialNeedsType.find(params[:id])

    respond_to do |format|
      if @special_needs_type.update_attributes(params[:special_needs_type])
        format.html { redirect_to @special_needs_type, :notice => 'Tipo de necessidade especial atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @special_needs_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /special_needs_types/1
  # DELETE /special_needs_types/1.json
  def destroy
    @special_needs_type = SpecialNeedsType.find(params[:id])
    @special_needs_type.destroy

    respond_to do |format|
      format.html { redirect_to special_needs_types_url, :notice => 'Tipo de necessidade especial excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
