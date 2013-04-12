require 'test_helper'

class AdmissionTypesControllerTest < ActionController::TestCase
  setup do
    @admission_type = admission_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admission_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admission_type" do
    assert_difference('AdmissionType.count') do
      post :create, :admission_type => { :description => @admission_type.description }
    end

    assert_redirected_to admission_type_path(assigns(:admission_type))
  end

  test "should show admission_type" do
    get :show, :id => @admission_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admission_type
    assert_response :success
  end

  test "should update admission_type" do
    put :update, :id => @admission_type, :admission_type => { :description => @admission_type.description }
    assert_redirected_to admission_type_path(assigns(:admission_type))
  end

  test "should destroy admission_type" do
    assert_difference('AdmissionType.count', -1) do
      delete :destroy, :id => @admission_type
    end

    assert_redirected_to admission_types_path
  end
end
