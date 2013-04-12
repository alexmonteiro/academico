class AdmissionTypesController < ApplicationController
  # GET /admission_types
  # GET /admission_types.json
  def index
    @admission_types = AdmissionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @admission_types }
    end
  end

  # GET /admission_types/1
  # GET /admission_types/1.json
  def show
    @admission_type = AdmissionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @admission_type }
    end
  end

  # GET /admission_types/new
  # GET /admission_types/new.json
  def new
    @admission_type = AdmissionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @admission_type }
    end
  end

  # GET /admission_types/1/edit
  def edit
    @admission_type = AdmissionType.find(params[:id])
  end

  # POST /admission_types
  # POST /admission_types.json
  def create
    @admission_type = AdmissionType.new(params[:admission_type])

    respond_to do |format|
      if @admission_type.save
        format.html { redirect_to @admission_type, :notice => 'Tipo de Ingresso criado com sucesso.' }
        format.json { render :json => @admission_type, :status => :created, :location => @admission_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @admission_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admission_types/1
  # PUT /admission_types/1.json
  def update
    @admission_type = AdmissionType.find(params[:id])

    respond_to do |format|
      if @admission_type.update_attributes(params[:admission_type])
        format.html { redirect_to @admission_type, :notice => 'Tipo de Ingressso atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @admission_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admission_types/1
  # DELETE /admission_types/1.json
  def destroy
    @admission_type = AdmissionType.find(params[:id])
    @admission_type.destroy

    respond_to do |format|
      format.html { redirect_to admission_types_url }
      format.json { head :no_content }
    end
  end
end
