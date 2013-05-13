class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    if params[:search]
     @search = Person.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 10
       #order_by(:name, :asc)
     end
     @people = @search.results
    else
     @people = Person.paginate(:page => params[:page], :per_page => 10, :order => 'name')
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])
    @person_address = PersonAddress.where(:person_id => params[:id])
    @people_telephones = PeopleTelephone.where("person_id = ?", params[:id])
    @person_identification_doc = PersonIdentificationDoc.where(:person_id => params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @person }
      format.pdf do
        pdf = PersonPdf.new(:person => @person, :people_telephones => @people_telephones, :person_address => @person_address, :person_identification_doc => @person_identification_doc)
        send_data pdf.render, :filename => "pessoa_#{@person.name}", :type => "application/pdf", :template => "#{Rails.root}/app/pdfs/templates/full_template.pdf", :disposition => "inline"
      end
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new
    @person.people_telephones.build
    @person.build_person_address
    @person.build_person_identification_doc
    @person.person_person_types.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(params[:person])
    condition_save_depts = @person.validates_depts_by_person_types(:person_type_depts_attributes => params[:person_type_depts], :person_types_checkeds => params[:person_types_checkeds]) # => Chama o metodo para validação dos campos de Vinculo Institucional... Este Método encontra-se na Model de Pessoas
    
    #comando para transformar as "/" para "." pois o sistema nao le datas com "/"
    params[:person][:birth_date].gsub!("/",".")
    
    respond_to do |format|
      if condition_save_depts && @person.save
        @person.create_depts_by_person_types(:person_type_depts_attributes => params[:person_type_depts], :person_types_checkeds => params[:person_types_checkeds])  # => Chama o metodo que salva os campos de Vinculo Institucional
        format.html { redirect_to @person, :notice => 'Pessoa criada com sucesso.' }
        format.json { render :json => @person, :status => :created, :location => @person }
      else
                                                                                                                                                                                                                                                                                                     
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])

    #comando para transformar as "/" para "." pois o sistema nao le datas com "/"
    params[:person][:birth_date].gsub!("/",".")
    
    if !@person.errors.any?
      condition_save_depts = @person.validates_depts_by_person_types(:person_type_depts_attributes => params[:person_type_depts], :person_types_checkeds => params[:person_types_checkeds]) # => Chama o metodo para validação dos campos de Vinculo Institucional... Este Método encontra-se na Model de Pessoas
    end

    respond_to do |format|
      if condition_save_depts && @person.update_attributes(params[:person])
        @person.person_person_types.destroy_all # => Antes de atualizar, elimina-se os registros relacionado a Vinculo Institucional
        @person.create_depts_by_person_types(:person_type_depts_attributes => params[:person_type_depts], :person_types_checkeds => params[:person_types_checkeds]) # => Chama o metodo que salva os campos de Vinculo Institucional
        #flash[:success] = t('controller_message.updated')
        format.html { redirect_to @person, :notice => t('controller_message.updated') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = Person.find(params[:id])
    if @person.destroy
      respond_to do |format|
        format.html { redirect_to people_url, :notice => t('controller_message.deleted') }
        format.json { head :no_content }
      end
    else
      error_message = ""
      @person.errors[:base].each do |error|
       error_message += "<li>#{error}</li>"
      end
      respond_to do |format|
        format.html { redirect_to request.referer, :alert => error_message }
        format.json { render :json => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update_state_select
      states = State.where(:country_id=>params[:id]).order(:name) unless params[:id].blank?
      render :partial => "states", :locals => { :states => states }
  end

  def update_city_select
      cities = City.where(:state_id=>params[:id]).order(:name) unless params[:id].blank?
      render :partial => "cities", :locals => { :cities => cities }
  end
  
  #Pesquisar por pessoa para efetuar a matrícula
  # GET /people
  # GET /people.json
  def pesquisar
    if params[:search]
     @search = Person.search do
       fulltext params[:search]
       paginate :page => params[:page] || 1, :per_page => 20
       #order_by(:name, :asc)
     end
     @people = @search.results
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @people }
    end
  end
  
end
