require 'test_helper'

class CourseMatrixAcademicRulesControllerTest < ActionController::TestCase
  setup do
    @course_matrix_academic_rule = course_matrix_academic_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_matrix_academic_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_matrix_academic_rule" do
    assert_difference('CourseMatrixAcademicRule.count') do
      post :create, :course_matrix_academic_rule => {  }
    end

    assert_redirected_to course_matrix_academic_rule_path(assigns(:course_matrix_academic_rule))
  end

  test "should show course_matrix_academic_rule" do
    get :show, :id => @course_matrix_academic_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @course_matrix_academic_rule
    assert_response :success
  end

  test "should update course_matrix_academic_rule" do
    put :update, :id => @course_matrix_academic_rule, :course_matrix_academic_rule => {  }
    assert_redirected_to course_matrix_academic_rule_path(assigns(:course_matrix_academic_rule))
  end

  test "should destroy course_matrix_academic_rule" do
    assert_difference('CourseMatrixAcademicRule.count', -1) do
      delete :destroy, :id => @course_matrix_academic_rule
    end

    assert_redirected_to course_matrix_academic_rules_path
  end
end
