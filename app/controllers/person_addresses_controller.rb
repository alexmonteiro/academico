class PersonAddressesController < ApplicationController
  # GET /person_addresses
  # GET /person_addresses.json
  def index
    @person = Person.find((params[:person_id]))
    @person_addresses = PersonAddress.where("person_id = ?", params[:person_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @person_addresses }
    end
  end

  # GET /person_addresses/1
  # GET /person_addresses/1.json
  def show
    @person = Person.find((params[:person_id]))
    @person_address = PersonAddress.find(params[:id])
    #Checks if the person is owner of this address
    if @person_address.person_id == @person.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @person_address}
      end
    else
      respond_to do |format|
        format.html { redirect_to person_person_addresses_path, :notice => "This record doesn`t exists."}
        format.json { render :json => @person_address}
      end
    end
  end

  # GET /person_addresses/new
  # GET /person_addresses/new.json
  def new
    @person_addresses = PersonAddress.where("person_id = ?", params[:person_id])
    #Checks if there is already some record address
    if !@person_addresses.exists?
      @person = Person.find((params[:person_id]))
      @person_address = PersonAddress.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @person_addresses }
      end
    else
      respond_to do |format|
        format.html { redirect_to person_person_addresses_path}
        format.json { render :json => @person_address }
      end
    end
  end

  # GET /person_addresses/1/edit
  def edit
    @person = Person.find((params[:person_id]))
    @person_address = PersonAddress.find(params[:id])
  end

  # POST /person_addresses
  # POST /person_addresses.json
  def create
    @person = Person.find((params[:person_id]))
    @person_address = PersonAddress.new(params[:person_address])

    respond_to do |format|
      if @person_address.save
        format.html { redirect_to [@person,@person_address], :notice => 'Person address was successfully created.' }
        format.json { render :json => [@person,@person_address], :status => :created, :location => @person_address }
      else
        format.html { render :action => "new" }
        format.json { render :json => @person_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /person_addresses/1
  # PUT /person_addresses/1.json
  def update
    @person = Person.find((params[:person_id]))
    @person_address = PersonAddress.find(params[:id])

    respond_to do |format|
      if @person_address.update_attributes(params[:person_address])
        format.html { redirect_to [@person,@person_address], :notice => 'Person address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @person_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /person_addresses/1
  # DELETE /person_addresses/1.json
  def destroy
    @person = Person.find((params[:person_id]))
    @person_address = PersonAddress.find(params[:id])
    @person_address.destroy

    respond_to do |format|
      format.html { redirect_to person_person_addresses_path }
      format.json { head :no_content }
    end
  end
end
