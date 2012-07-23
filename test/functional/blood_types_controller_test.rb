require 'test_helper'

class BloodTypesControllerTest < ActionController::TestCase
  setup do
    @blood_type = blood_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_type" do
    assert_difference('BloodType.count') do
      post :create, :blood_type => { :type => @blood_type.type }
    end

    assert_redirected_to blood_type_path(assigns(:blood_type))
  end

  test "should show blood_type" do
    get :show, :id => @blood_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blood_type
    assert_response :success
  end

  test "should update blood_type" do
    put :update, :id => @blood_type, :blood_type => { :type => @blood_type.type }
    assert_redirected_to blood_type_path(assigns(:blood_type))
  end

  test "should destroy blood_type" do
    assert_difference('BloodType.count', -1) do
      delete :destroy, :id => @blood_type
    end

    assert_redirected_to blood_types_path
  end
end
