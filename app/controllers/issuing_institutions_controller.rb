class IssuingInstitutionsController < ApplicationController
  load_and_authorize_resource
  # GET /issuing_institutions
  # GET /issuing_institutions.json
  def index
    @issuing_institutions = IssuingInstitution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @issuing_institutions }
    end
  end

  # GET /issuing_institutions/1
  # GET /issuing_institutions/1.json
  def show
    @issuing_institution = IssuingInstitution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @issuing_institution }
    end
  end

  # GET /issuing_institutions/new
  # GET /issuing_institutions/new.json
  def new
    @issuing_institution = IssuingInstitution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @issuing_institution }
    end
  end

  # GET /issuing_institutions/1/edit
  def edit
    @issuing_institution = IssuingInstitution.find(params[:id])
  end

  # POST /issuing_institutions
  # POST /issuing_institutions.json
  def create
    @issuing_institution = IssuingInstitution.new(params[:issuing_institution])

    respond_to do |format|
      if @issuing_institution.save
        format.html { redirect_to @issuing_institution, :notice => 'Orgão Emissor criado com sucesso.' }
        format.json { render :json => @issuing_institution, :status => :created, :location => @issuing_institution }
      else
        format.html { render :action => "new" }
        format.json { render :json => @issuing_institution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /issuing_institutions/1
  # PUT /issuing_institutions/1.json
  def update
    @issuing_institution = IssuingInstitution.find(params[:id])

    respond_to do |format|
      if @issuing_institution.update_attributes(params[:issuing_institution])
        format.html { redirect_to @issuing_institution, :notice => 'Orgão Emissor atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @issuing_institution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /issuing_institutions/1
  # DELETE /issuing_institutions/1.json
  def destroy
    @issuing_institution = IssuingInstitution.find(params[:id])
    @issuing_institution.destroy

    respond_to do |format|
      format.html { redirect_to issuing_institutions_url, :notice => 'Orgão Emissor excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
