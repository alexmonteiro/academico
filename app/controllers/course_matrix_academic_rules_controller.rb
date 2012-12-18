class CourseMatrixAcademicRulesController < ApplicationController
  # GET /course_matrix_academic_rules
  # GET /course_matrix_academic_rules.json
  def index
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @course_matrix_academic_rules = CourseMatrixAcademicRule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @course_matrix_academic_rules }
    end
  end

  # GET /course_matrix_academic_rules/1
  # GET /course_matrix_academic_rules/1.json
  def show
    @course_matrix_academic_rule = CourseMatrixAcademicRule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course_matrix_academic_rule }
    end
  end

  # GET /course_matrix_academic_rules/new
  # GET /course_matrix_academic_rules/new.json
  def new
    @course_matrix_academic_rule = CourseMatrixAcademicRule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course_matrix_academic_rule }
    end
  end

  # GET /course_matrix_academic_rules/1/edit
  def edit
    @course_matrix_academic_rule = CourseMatrixAcademicRule.find(params[:id])
  end

  # POST /course_matrix_academic_rules
  # POST /course_matrix_academic_rules.json
  def create
    @course_matrix_academic_rule = CourseMatrixAcademicRule.new(params[:course_matrix_academic_rule])

    respond_to do |format|
      if @course_matrix_academic_rule.save
        format.html { redirect_to @course_matrix_academic_rule, :notice => 'Course matrix academic rule was successfully created.' }
        format.json { render :json => @course_matrix_academic_rule, :status => :created, :location => @course_matrix_academic_rule }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course_matrix_academic_rule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_matrix_academic_rules/1
  # PUT /course_matrix_academic_rules/1.json
  def update
    @course_matrix_academic_rule = CourseMatrixAcademicRule.find(params[:id])

    respond_to do |format|
      if @course_matrix_academic_rule.update_attributes(params[:course_matrix_academic_rule])
        format.html { redirect_to @course_matrix_academic_rule, :notice => 'Course matrix academic rule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course_matrix_academic_rule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_matrix_academic_rules/1
  # DELETE /course_matrix_academic_rules/1.json
  def destroy
    @course_matrix_academic_rule = CourseMatrixAcademicRule.find(params[:id])
    @course_matrix_academic_rule.destroy

    respond_to do |format|
      format.html { redirect_to course_matrix_academic_rules_url }
      format.json { head :no_content }
    end
  end
end
