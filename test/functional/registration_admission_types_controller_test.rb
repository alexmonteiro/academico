require 'test_helper'

class RegistrationAdmissionTypesControllerTest < ActionController::TestCase
  setup do
    @registration_admission_type = registration_admission_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_admission_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_admission_type" do
    assert_difference('RegistrationAdmissionType.count') do
      post :create, :registration_admission_type => {  }
    end

    assert_redirected_to registration_admission_type_path(assigns(:registration_admission_type))
  end

  test "should show registration_admission_type" do
    get :show, :id => @registration_admission_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registration_admission_type
    assert_response :success
  end

  test "should update registration_admission_type" do
    put :update, :id => @registration_admission_type, :registration_admission_type => {  }
    assert_redirected_to registration_admission_type_path(assigns(:registration_admission_type))
  end

  test "should destroy registration_admission_type" do
    assert_difference('RegistrationAdmissionType.count', -1) do
      delete :destroy, :id => @registration_admission_type
    end

    assert_redirected_to registration_admission_types_path
  end
end
