class PeopleTelephonesController < ApplicationController
  # GET /people_telephones
  # GET /people_telephones.json
  def index
    @person = Person.find((params[:person_id]))
    @people_telephones = PeopleTelephone.where("people_id = ?", params[:person_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @people_telephones }
    end
  end

  # GET /people_telephones/1
  # GET /people_telephones/1.json
  def show
    @person = Person.find((params[:person_id]))
    @people_telephone = PeopleTelephone.find(params[:id])
    #Checks if the person is owner of this telephone
    if @people_telephone.people_id == @person.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @people_telephone }
      end
    else
      respond_to do |format|
        format.html { redirect_to person_people_telephones_path, :notice => "This record do not exists."}
        format.json { render :json => @people_telephone }
      end
    end
  end

  # GET /people_telephones/new
  # GET /people_telephones/new.json
  def new
    @person = Person.find((params[:person_id]))
    @people_telephone = PeopleTelephone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @people_telephone }
    end
  end

  # GET /people_telephones/1/edit
  def edit
    @person = Person.find((params[:person_id]))
    @people_telephone = PeopleTelephone.find(params[:id])
  end

  # POST /people_telephones
  # POST /people_telephones.json
  def create
    @people_telephone = PeopleTelephone.new(params[:people_telephone])

    respond_to do |format|
      if @people_telephone.save
        format.html { redirect_to person_people_telephones_path, :notice => 'People telephone was successfully created.' }
        format.json { render :json => [@people,@people_telephone], :status => :created, :location => @people_telephone }
      else
        format.html { render :action => "new" }
        format.json { render :json => @people_telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /people_telephones/1
  # PUT /people_telephones/1.json
  def update
    @people_telephone = PeopleTelephone.find(params[:id])

    respond_to do |format|
      if @people_telephone.update_attributes(params[:people_telephone])
        format.html { redirect_to person_people_telephones_path, :notice => 'People telephone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @people_telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /people_telephones/1
  # DELETE /people_telephones/1.json
  def destroy
    @people_telephone = PeopleTelephone.find(params[:id])
    @people_telephone.destroy

    respond_to do |format|
      format.html { redirect_to person_people_telephones_path }
      format.json { head :no_content }
    end
  end
end
