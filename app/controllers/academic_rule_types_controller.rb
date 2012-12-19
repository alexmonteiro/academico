class AcademicRuleTypesController < ApplicationController
  # GET /academic_rule_types
  # GET /academic_rule_types.json
  def index
    @academic_rule_types = AcademicRuleType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @academic_rule_types }
    end
  end

  # GET /academic_rule_types/1
  # GET /academic_rule_types/1.json
  def show
    @academic_rule_type = AcademicRuleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @academic_rule_type }
    end
  end

  # GET /academic_rule_types/new
  # GET /academic_rule_types/new.json
  def new
    @academic_rule_type = AcademicRuleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @academic_rule_type }
    end
  end

  # GET /academic_rule_types/1/edit
  def edit
    @academic_rule_type = AcademicRuleType.find(params[:id])
  end

  # POST /academic_rule_types
  # POST /academic_rule_types.json
  def create
    @academic_rule_type = AcademicRuleType.new(params[:academic_rule_type])

    respond_to do |format|
      if @academic_rule_type.save
        format.html { redirect_to @academic_rule_type, :notice => 'Academic rule type was successfully created.' }
        format.json { render :json => @academic_rule_type, :status => :created, :location => @academic_rule_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @academic_rule_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_rule_types/1
  # PUT /academic_rule_types/1.json
  def update
    @academic_rule_type = AcademicRuleType.find(params[:id])

    respond_to do |format|
      if @academic_rule_type.update_attributes(params[:academic_rule_type])
        format.html { redirect_to @academic_rule_type, :notice => 'Academic rule type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @academic_rule_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_rule_types/1
  # DELETE /academic_rule_types/1.json
  def destroy
    @academic_rule_type = AcademicRuleType.find(params[:id])
    @academic_rule_type.destroy

    respond_to do |format|
      format.html { redirect_to academic_rule_types_url }
      format.json { head :no_content }
    end
  end
end
