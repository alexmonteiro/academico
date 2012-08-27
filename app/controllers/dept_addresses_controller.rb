class DeptAddressesController < ApplicationController
  # GET /dept_addresses
  # GET /dept_addresses.json
  def index
    @dept = Dept.find((params[:dept_id]))
    @dept_addresses = DeptAddress.where("dept_id = ?", params[:dept_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dept_addresses }
    end
  end

  # GET /dept_addresses/1
  # GET /dept_addresses/1.json
  def show
    @dept = Dept.find((params[:dept_id]))
    @dept_address = DeptAddress.find(params[:id])
    #Checks if the person is owner of this address
    if @dept_address.dept_id == @dept.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @dept_address}
      end
    else
      respond_to do |format|
        format.html { redirect_to dept_dept_addresses_path, :notice => "This record do not exists."}
        format.json { render :json => @dept_address}
      end
    end
  end

  # GET /dept_addresses/new
  # GET /dept_addresses/new.json
  def new
    @dept_addresses = DeptAddress.where("dept_id = ?", params[:dept_id])
    #Checks if there is already some record address
    if !@dept_addresses.exists?
      @dept = Dept.find((params[:dept_id]))
      @dept_address = DeptAddress.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render :json => @dept_addresses }
      end
    else
      respond_to do |format|
        format.html { redirect_to dept_dept_addresses_path}
        format.json { render :json => @dept_address }
      end
    end
  end

  # GET /dept_addresses/1/edit
  def edit
    @dept = Dept.find((params[:dept_id]))
    @dept_address = DeptAddress.find(params[:id])
  end

  # POST /dept_addresses
  # POST /dept_addresses.json
  def create
    @dept_address = DeptAddress.new(params[:dept_address])

    respond_to do |format|
      if @dept_address.save
        format.html { redirect_to dept_dept_addresses_path, :notice => 'Dept address was successfully created.' }
        format.json { render :json => [@dept,@dept_address], :status => :created, :location => @dept_address }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dept_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dept_addresses/1
  # PUT /dept_addresses/1.json
  def update
    @dept_address = DeptAddress.find(params[:id])

    respond_to do |format|
      if @dept_address.update_attributes(params[:dept_address])
        format.html { redirect_to dept_dept_addresses_path, :notice => 'Dept address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dept_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_addresses/1
  # DELETE /dept_addresses/1.json
  def destroy
    @dept_address = DeptAddress.find(params[:id])
    @dept_address.destroy

    respond_to do |format|
      format.html { redirect_to dept_dept_addresses_path }
      format.json { head :no_content }
    end
  end
end
