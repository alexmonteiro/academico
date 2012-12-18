require 'test_helper'

class AcademicRuleTypesControllerTest < ActionController::TestCase
  setup do
    @academic_rule_type = academic_rule_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_rule_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_rule_type" do
    assert_difference('AcademicRuleType.count') do
      post :create, :academic_rule_type => { :rule => @academic_rule_type.rule }
    end

    assert_redirected_to academic_rule_type_path(assigns(:academic_rule_type))
  end

  test "should show academic_rule_type" do
    get :show, :id => @academic_rule_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @academic_rule_type
    assert_response :success
  end

  test "should update academic_rule_type" do
    put :update, :id => @academic_rule_type, :academic_rule_type => { :rule => @academic_rule_type.rule }
    assert_redirected_to academic_rule_type_path(assigns(:academic_rule_type))
  end

  test "should destroy academic_rule_type" do
    assert_difference('AcademicRuleType.count', -1) do
      delete :destroy, :id => @academic_rule_type
    end

    assert_redirected_to academic_rule_types_path
  end
end
