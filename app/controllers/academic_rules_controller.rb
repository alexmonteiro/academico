class AcademicRulesController < ApplicationController
  # GET /academic_rules
  # GET /academic_rules.json
  def index
    @academic_rules = AcademicRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @academic_rules }
    end
  end

  # GET /academic_rules/1
  # GET /academic_rules/1.json
  def show
    @academic_rule = AcademicRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @academic_rule }
    end
  end

  # GET /academic_rules/new
  # GET /academic_rules/new.json
  def new
    @academic_rule = AcademicRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @academic_rule }
    end
  end

  # GET /academic_rules/1/edit
  def edit
    @academic_rule = AcademicRule.find(params[:id])
  end

  # POST /academic_rules
  # POST /academic_rules.json
  def create
    @academic_rule = AcademicRule.new(params[:academic_rule])

    respond_to do |format|
      if @academic_rule.save
        format.html { redirect_to @academic_rule, :notice => 'Regra acadêmica criada com sucesso.' }
        format.json { render :json => @academic_rule, :status => :created, :location => @academic_rule }
      else
        format.html { render :action => "new" }
        format.json { render :json => @academic_rule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /academic_rules/1
  # PUT /academic_rules/1.json
  def update
    @academic_rule = AcademicRule.find(params[:id])

    respond_to do |format|
      if @academic_rule.update_attributes(params[:academic_rule])
        format.html { redirect_to @academic_rule, :notice => 'Regra acadêmica ataulizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @academic_rule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_rules/1
  # DELETE /academic_rules/1.json
  def destroy
    @academic_rule = AcademicRule.find(params[:id])
    @academic_rule.destroy

    respond_to do |format|
      format.html { redirect_to academic_rules_url }
      format.json { head :no_content }
    end
  end
end
