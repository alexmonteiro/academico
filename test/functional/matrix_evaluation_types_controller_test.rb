require 'test_helper'

class MatrixEvaluationTypesControllerTest < ActionController::TestCase
  setup do
    @matrix_evaluation_type = matrix_evaluation_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_evaluation_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_evaluation_type" do
    assert_difference('MatrixEvaluationType.count') do
      post :create, :matrix_evaluation_type => { :description => @matrix_evaluation_type.description }
    end

    assert_redirected_to matrix_evaluation_type_path(assigns(:matrix_evaluation_type))
  end

  test "should show matrix_evaluation_type" do
    get :show, :id => @matrix_evaluation_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrix_evaluation_type
    assert_response :success
  end

  test "should update matrix_evaluation_type" do
    put :update, :id => @matrix_evaluation_type, :matrix_evaluation_type => { :description => @matrix_evaluation_type.description }
    assert_redirected_to matrix_evaluation_type_path(assigns(:matrix_evaluation_type))
  end

  test "should destroy matrix_evaluation_type" do
    assert_difference('MatrixEvaluationType.count', -1) do
      delete :destroy, :id => @matrix_evaluation_type
    end

    assert_redirected_to matrix_evaluation_types_path
  end
end
