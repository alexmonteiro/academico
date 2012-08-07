require 'test_helper'

class RegistrationSchemesControllerTest < ActionController::TestCase
  setup do
    @registration_scheme = registration_schemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_schemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_scheme" do
    assert_difference('RegistrationScheme.count') do
      post :create, :registration_scheme => { :description => @registration_scheme.description }
    end

    assert_redirected_to registration_scheme_path(assigns(:registration_scheme))
  end

  test "should show registration_scheme" do
    get :show, :id => @registration_scheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @registration_scheme
    assert_response :success
  end

  test "should update registration_scheme" do
    put :update, :id => @registration_scheme, :registration_scheme => { :description => @registration_scheme.description }
    assert_redirected_to registration_scheme_path(assigns(:registration_scheme))
  end

  test "should destroy registration_scheme" do
    assert_difference('RegistrationScheme.count', -1) do
      delete :destroy, :id => @registration_scheme
    end

    assert_redirected_to registration_schemes_path
  end
end
