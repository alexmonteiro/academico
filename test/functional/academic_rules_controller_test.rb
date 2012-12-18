require 'test_helper'

class AcademicRulesControllerTest < ActionController::TestCase
  setup do
    @academic_rule = academic_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_rule" do
    assert_difference('AcademicRule.count') do
      post :create, :academic_rule => { :operator => @academic_rule.operator, :value => @academic_rule.value }
    end

    assert_redirected_to academic_rule_path(assigns(:academic_rule))
  end

  test "should show academic_rule" do
    get :show, :id => @academic_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @academic_rule
    assert_response :success
  end

  test "should update academic_rule" do
    put :update, :id => @academic_rule, :academic_rule => { :operator => @academic_rule.operator, :value => @academic_rule.value }
    assert_redirected_to academic_rule_path(assigns(:academic_rule))
  end

  test "should destroy academic_rule" do
    assert_difference('AcademicRule.count', -1) do
      delete :destroy, :id => @academic_rule
    end

    assert_redirected_to academic_rules_path
  end
end
