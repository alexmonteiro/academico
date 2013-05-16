class TelephoneTypesController < ApplicationController
  load_and_authorize_resource
  # GET /telephone_types
  # GET /telephone_types.json
  def index
    @telephone_types = TelephoneType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @telephone_types }
    end
  end

  # GET /telephone_types/1
  # GET /telephone_types/1.json
  def show
    @telephone_type = TelephoneType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @telephone_type }
    end
  end

  # GET /telephone_types/new
  # GET /telephone_types/new.json
  def new
    @telephone_type = TelephoneType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @telephone_type }
    end
  end

  # GET /telephone_types/1/edit
  def edit
    @telephone_type = TelephoneType.find(params[:id])
  end

  # POST /telephone_types
  # POST /telephone_types.json
  def create
    @telephone_type = TelephoneType.new(params[:telephone_type])

    respond_to do |format|
      if @telephone_type.save
        format.html { redirect_to @telephone_type, :notice => 'Tipo de telefone criado com sucesso.' }
        format.json { render :json => @telephone_type, :status => :created, :location => @telephone_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @telephone_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telephone_types/1
  # PUT /telephone_types/1.json
  def update
    @telephone_type = TelephoneType.find(params[:id])

    respond_to do |format|
      if @telephone_type.update_attributes(params[:telephone_type])
        format.html { redirect_to @telephone_type, :notice => 'Tipo de telefone atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @telephone_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_types/1
  # DELETE /telephone_types/1.json
  def destroy
    @telephone_type = TelephoneType.find(params[:id])
    @telephone_type.destroy

    respond_to do |format|
      format.html { redirect_to telephone_types_url, :notice => 'Tipo de telefone excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
