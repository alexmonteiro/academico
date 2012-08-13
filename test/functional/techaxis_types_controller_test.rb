require 'test_helper'

class TechaxisTypesControllerTest < ActionController::TestCase
  setup do
    @techaxis_type = techaxis_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techaxis_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techaxis_type" do
    assert_difference('TechaxisType.count') do
      post :create, :techaxis_type => { :techaxis_type => @techaxis_type.techaxis_type }
    end

    assert_redirected_to techaxis_type_path(assigns(:techaxis_type))
  end

  test "should show techaxis_type" do
    get :show, :id => @techaxis_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @techaxis_type
    assert_response :success
  end

  test "should update techaxis_type" do
    put :update, :id => @techaxis_type, :techaxis_type => { :techaxis_type => @techaxis_type.techaxis_type }
    assert_redirected_to techaxis_type_path(assigns(:techaxis_type))
  end

  test "should destroy techaxis_type" do
    assert_difference('TechaxisType.count', -1) do
      delete :destroy, :id => @techaxis_type
    end

    assert_redirected_to techaxis_types_path
  end
end
