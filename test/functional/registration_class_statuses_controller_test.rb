require 'test_helper'

class RegistrationClassStatusesControllerTest < ActionController::TestCase
  setup do
    @registration_class_status = registration_class_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_class_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_class_status" do
    assert_difference('RegistrationClassStatus.count') do
      post :create, :registration_class_status => { :description => @registration_class_status.description, :is_approved => @registration_class_status.is_approved }
    end

    assert_redirected_to registration_class_status_path(assigns(:registration_class_status))
  end

  test "should show registration_class_status" do
    get :show, :id => @registration_class_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registration_class_status
    assert_response :success
  end

  test "should update registration_class_status" do
    put :update, :id => @registration_class_status, :registration_class_status => { :description => @registration_class_status.description, :is_approved => @registration_class_status.is_approved }
    assert_redirected_to registration_class_status_path(assigns(:registration_class_status))
  end

  test "should destroy registration_class_status" do
    assert_difference('RegistrationClassStatus.count', -1) do
      delete :destroy, :id => @registration_class_status
    end

    assert_redirected_to registration_class_statuses_path
  end
end
