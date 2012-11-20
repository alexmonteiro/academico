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
    @people_telephones = PeopleTelephone.where("people_id = ?", params[:id])
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

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, :notice => 'Person was successfully created.' }
        format.json { render :json => @person, :status => :created, :location => @person }
      else
        format.html { render :action => "new" }
        format.json { render :json => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])
    if !params[:person]['person_type_ids']
      @person.person_types.destroy_all
    end 

    respond_to do |format|
      if @person.update_attributes(params[:person])
        flash[:success] = 'Person was successfully updated.'
        format.html { redirect_to @person }
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
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
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
  
end
