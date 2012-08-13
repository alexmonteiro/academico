require 'test_helper'

class TechaxesControllerTest < ActionController::TestCase
  setup do
    @techaxis = techaxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techaxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techaxis" do
    assert_difference('Techaxis.count') do
      post :create, :techaxis => { :techaxis => @techaxis.techaxis }
    end

    assert_redirected_to techaxis_path(assigns(:techaxis))
  end

  test "should show techaxis" do
    get :show, :id => @techaxis
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @techaxis
    assert_response :success
  end

  test "should update techaxis" do
    put :update, :id => @techaxis, :techaxis => { :techaxis => @techaxis.techaxis }
    assert_redirected_to techaxis_path(assigns(:techaxis))
  end

  test "should destroy techaxis" do
    assert_difference('Techaxis.count', -1) do
      delete :destroy, :id => @techaxis
    end

    assert_redirected_to techaxes_path
  end
end
