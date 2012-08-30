class DeptTelephonesController < ApplicationController
  # GET /dept_telephones
  # GET /dept_telephones.json
  def index
    @dept = Dept.find((params[:dept_id]))
    @dept_telephones = DeptTelephone.where("dept_id = ?", params[:dept_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dept_telephones }
    end
  end

  # GET /dept_telephones/1
  # GET /dept_telephones/1.json
  def show
    @dept = Dept.find((params[:dept_id]))
    @dept_telephone = DeptTelephone.find(params[:id])
    #Checks if the dept is owner of this telephone
    if @dept_telephone.dept_id == @dept.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @dept_telephone }
      end
    else
      respond_to do |format|
        format.html { redirect_to dept_dept_telephones_path, :notice => "This record doesn`t exists."}
        format.json { render :json => @dept_telephone }
      end
    end
  end

  # GET /dept_telephones/new
  # GET /dept_telephones/new.json
  def new
    @dept = Dept.find((params[:dept_id]))
    @dept_telephone = DeptTelephone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dept_telephone }
    end
  end

  # GET /dept_telephones/1/edit
  def edit
    @dept = Dept.find((params[:dept_id]))
    @dept_telephone = DeptTelephone.find(params[:id])
  end

  # POST /dept_telephones
  # POST /dept_telephones.json
  def create
    @dept = Dept.find((params[:dept_id]))
    @dept_telephone = DeptTelephone.new(params[:dept_telephone])

    respond_to do |format|
      if @dept_telephone.save
        format.html { redirect_to [@dept,@dept_telephone], :notice => 'Dept telephone was successfully created.' }
        format.json { render :json => [@dept,@dept_telephone], :status => :created, :location => @dept_telephone }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dept_telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dept_telephones/1
  # PUT /dept_telephones/1.json
  def update
    @dept = Dept.find((params[:dept_id]))
    @dept_telephone = DeptTelephone.find(params[:id])

    respond_to do |format|
      if @dept_telephone.update_attributes(params[:dept_telephone])
        format.html { redirect_to [@dept,@dept_telephone], :notice => 'Dept telephone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dept_telephone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_telephones/1
  # DELETE /dept_telephones/1.json
  def destroy
    @dept_telephone = DeptTelephone.find(params[:id])
    @dept_telephone.destroy

    respond_to do |format|
      format.html { redirect_to dept_dept_telephones_path }
      format.json { head :no_content }
    end
  end
end
