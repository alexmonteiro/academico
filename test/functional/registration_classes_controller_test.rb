require 'test_helper'

class RegistrationClassesControllerTest < ActionController::TestCase
  setup do
    @registration_class = registration_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_class" do
    assert_difference('RegistrationClass.count') do
      post :create, :registration_class => { :registered_at => @registration_class.registered_at }
    end

    assert_redirected_to registration_class_path(assigns(:registration_class))
  end

  test "should show registration_class" do
    get :show, :id => @registration_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registration_class
    assert_response :success
  end

  test "should update registration_class" do
    put :update, :id => @registration_class, :registration_class => { :registered_at => @registration_class.registered_at }
    assert_redirected_to registration_class_path(assigns(:registration_class))
  end

  test "should destroy registration_class" do
    assert_difference('RegistrationClass.count', -1) do
      delete :destroy, :id => @registration_class
    end

    assert_redirected_to registration_classes_path
  end
end
