class PersonIdentificationDocsController < ApplicationController
  # GET /person_identification_docs
  # GET /person_identification_docs.json
  def index
    @person = Person.find((params[:person_id]))
    @person_identification_docs = PersonIdentificationDoc.where("person_id = ?", params[:person_id])



    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @person_identification_docs }
    end
  end

  # GET /person_identification_docs/1
  # GET /person_identification_docs/1.json
  def show
    @person = Person.find((params[:person_id]))
    @person_identification_doc = PersonIdentificationDoc.find(params[:id])
    #Checks if the person is owner of this Identification Doc
    if @person_identification_doc.person_id == @person.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @person_identification_doc }
      end
    else
      respond_to do |format|
        format.html { redirect_to person_person_identification_docs_path, :notice => "Este registro não existe."}
        format.json { render :json => @person_identification_doc }
      end
    end
  end

  # GET /person_identification_docs/new
  # GET /person_identification_docs/new.json
  def new
    @person_identification_docs = PersonIdentificationDoc.where("person_id = ?", params[:person_id])
    #Checks if there is already some record Identification Doc
    if !@person_identification_docs.exists?
      @person = Person.find((params[:person_id]))
      @person_identification_doc =  PersonIdentificationDoc.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @person_identification_doc }
      end
    else
      respond_to do |format|
        format.html { redirect_to person_person_identification_docs_path}
        format.json { render :json => @person_identification_doc }
      end
    end
  end

  # GET /person_identification_docs/1/edit
  def edit
    @person = Person.find((params[:person_id]))
    @person_identification_doc = PersonIdentificationDoc.find(params[:id])
  end

  # POST /person_identification_docs
  # POST /person_identification_docs.json
  def create
    @person = Person.find((params[:person_id]))
    params[:person_identification_doc][:rg_uf] = State.find(params[:person_identification_doc][:rg_uf])
    params[:person_identification_doc][:vr_uf] = State.find(params[:person_identification_doc][:vr_uf])
    params[:person_identification_doc][:rg_issuing_institution] = IssuingInstitution.find(params[:person_identification_doc][:rg_issuing_institution])
    @person_identification_doc = PersonIdentificationDoc.new(params[:person_identification_doc])

    respond_to do |format|
      if @person_identification_doc.save
        format.html { redirect_to [@person,@person_identification_doc], :notice => 'Documentação criada.' }
        format.json { render :json => [@person,@person_identification_doc], :status => :created, :location => @person_identification_doc }
      else
        format.html { render :action => "new" }
        format.json { render :json => @person_identification_doc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /person_identification_docs/1
  # PUT /person_identification_docs/1.json
  def update
    @person = Person.find((params[:person_id]))
    params[:person_identification_doc][:rg_uf] = State.find(params[:person_identification_doc][:rg_uf])
    params[:person_identification_doc][:vr_uf] = State.find(params[:person_identification_doc][:vr_uf])
    params[:person_identification_doc][:rg_issuing_institution] = IssuingInstitution.find(params[:person_identification_doc][:rg_issuing_institution])
    @person_identification_doc = PersonIdentificationDoc.find(params[:id])

    respond_to do |format|
      if @person_identification_doc.update_attributes(params[:person_identification_doc])
        format.html { redirect_to [@person,@person_identification_doc], :notice => 'Documentação atualizada.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @person_identification_doc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /person_identification_docs/1
  # DELETE /person_identification_docs/1.json
  def destroy
    @person = Person.find((params[:person_id]))
    @person_identification_doc = PersonIdentificationDoc.find(params[:id])
    @person_identification_doc.destroy

    respond_to do |format|
      format.html { redirect_to person_person_identification_docs_path }
      format.json { head :no_content }
    end
  end
end
