class RegistrationsController < ApplicationController
  # GET /registrations
  # GET /registrations.json
  def index
    if params[:search]
     @search = Registration.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 10
     end
     @registrations = @search.results
    else
     @registrations = Registration.paginate(:page => params[:page], :per_page => 10)
    end    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registrations }
    end
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration }
      format.pdf do
        #pdf = Prawn::Document.new
        pdf = RegistrationPdf.new(:registration => @registration, :type_document => params[:type_document])
        send_data pdf.render, :filename => "matricula_#{@registration.registration_number}", :type => "application/pdf", :template => "#{Rails.root}/app/pdfs/templates/full_template.pdf", :disposition => "inline"
      end
      
    end
  end

  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @person = Person.find(params[:person_id])
    @registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    @registration = Registration.find(params[:id])
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(params[:registration])
    if params[:person_id]
      @person = Person.find(params[:person_id])
      @registration.person_id = @person.id
    end
    
    @registration.registration_number = @registration.generate_registration_number

    respond_to do |format|
      if @registration.save
        @registration.person.update_attributes(params[:person])
        format.html { redirect_to [@person, @registration], :notice => 'Matrícula criada com sucesso.' }
        format.json { render :json => @registration, :status => :created, :location => @registration }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registrations/1
  # PUT /registrations/1.json
  def update
    @registration = Registration.find(params[:id])

    respond_to do |format|
      if @registration.update_attributes(params[:registration])
        @registration.person.update_attributes(params[:person])
        if !params[:registration][:admission_type_ids]
          @registration.registration_admission_types.delete_all
        end
          format.html { redirect_to @registration, :notice => 'Matrícula atualizada com sucesso.' }
          format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity}
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to registrations_url, :notice => 'Matrícula excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
