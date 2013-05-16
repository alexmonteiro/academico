class CourseMatrixAcademicRulesController < ApplicationController
  load_and_authorize_resource
  # GET /course_matrix_academic_rules
  # GET /course_matrix_academic_rules.json
  def index
    @matrix = CourseMatrix.find(params[:course_matrix_id])
    @course_matrix_academic_rules = CourseMatrixAcademicRule.where(:course_matrix_id => params[:course_matrix_id])
    academic_rule_ids = @course_matrix_academic_rules.pluck(:academic_rule_id)
    if academic_rule_ids.blank?
      academic_rule_ids = 0
    end
    @academic_rules = AcademicRule.where("id not in (?)", academic_rule_ids)

  

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @course_matrix_academic_rules }
    end
  end

  # DELETE /course_matrix_academic_rules/1
  # DELETE /course_matrix_academic_rules/1.json
  def destroy
    @course_matrix_academic_rule = CourseMatrixAcademicRule.find(params[:id])
    @course_matrix_academic_rule.destroy

    respond_to do |format|
      format.html { redirect_to course_matrix_course_matrix_academic_rules_path, :notice => 'Regra removida com sucesso!'}
      format.json { head :no_content }
    end
  end
  
  def register_rules

   if (params.has_key?(:academic_rule_ids) && params.has_key?(:course_matrix_id))
     params[:academic_rule_ids].each do |academic_rule_id|
       CourseMatrixAcademicRule.create({:course_matrix_id => params[:course_matrix_id], :academic_rule_id => academic_rule_id})
     end
     respond_to do |format|
         format.html { redirect_to course_matrix_course_matrix_academic_rules_path, :notice => 'Regras vinculadas com sucesso!' }
         format.json { render :json => @course_matrix_academic_rule, :status => :created, :location => @course_matrix_academic_rule }
      end
     
   else
     respond_to do |format|
         format.html { redirect_to course_matrix_course_matrix_academic_rules_path, :notice => 'Nenhuma ação relizada.' }
         format.json { render :json => @course_matrix_academic_rule, :status => :created, :location => @course_matrix_academic_rule }
      end
     
   end
  end
  
end
