require 'test_helper'

class EquipamentTypesControllerTest < ActionController::TestCase
  setup do
    @equipament_type = equipament_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipament_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipament_type" do
    assert_difference('EquipamentType.count') do
      post :create, :equipament_type => { :description => @equipament_type.description }
    end

    assert_redirected_to equipament_type_path(assigns(:equipament_type))
  end

  test "should show equipament_type" do
    get :show, :id => @equipament_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @equipament_type
    assert_response :success
  end

  test "should update equipament_type" do
    put :update, :id => @equipament_type, :equipament_type => { :description => @equipament_type.description }
    assert_redirected_to equipament_type_path(assigns(:equipament_type))
  end

  test "should destroy equipament_type" do
    assert_difference('EquipamentType.count', -1) do
      delete :destroy, :id => @equipament_type
    end

    assert_redirected_to equipament_types_path
  end
end
