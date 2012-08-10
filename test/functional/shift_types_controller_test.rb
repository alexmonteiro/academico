require 'test_helper'

class ShiftTypesControllerTest < ActionController::TestCase
  setup do
    @shift_type = shift_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shift_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift_type" do
    assert_difference('ShiftType.count') do
      post :create, :shift_type => { :description => @shift_type.description }
    end

    assert_redirected_to shift_type_path(assigns(:shift_type))
  end

  test "should show shift_type" do
    get :show, :id => @shift_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shift_type
    assert_response :success
  end

  test "should update shift_type" do
    put :update, :id => @shift_type, :shift_type => { :description => @shift_type.description }
    assert_redirected_to shift_type_path(assigns(:shift_type))
  end

  test "should destroy shift_type" do
    assert_difference('ShiftType.count', -1) do
      delete :destroy, :id => @shift_type
    end

    assert_redirected_to shift_types_path
  end
end
