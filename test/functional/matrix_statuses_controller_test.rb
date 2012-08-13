require 'test_helper'

class MatrixStatusesControllerTest < ActionController::TestCase
  setup do
    @matrix_status = matrix_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_status" do
    assert_difference('MatrixStatus.count') do
      post :create, :matrix_status => { :description => @matrix_status.description }
    end

    assert_redirected_to matrix_status_path(assigns(:matrix_status))
  end

  test "should show matrix_status" do
    get :show, :id => @matrix_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrix_status
    assert_response :success
  end

  test "should update matrix_status" do
    put :update, :id => @matrix_status, :matrix_status => { :description => @matrix_status.description }
    assert_redirected_to matrix_status_path(assigns(:matrix_status))
  end

  test "should destroy matrix_status" do
    assert_difference('MatrixStatus.count', -1) do
      delete :destroy, :id => @matrix_status
    end

    assert_redirected_to matrix_statuses_path
  end
end
