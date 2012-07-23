require 'test_helper'

class SpecialNeedsTypesControllerTest < ActionController::TestCase
  setup do
    @special_needs_type = special_needs_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_needs_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_needs_type" do
    assert_difference('SpecialNeedsType.count') do
      post :create, :special_needs_type => { :type => @special_needs_type.type }
    end

    assert_redirected_to special_needs_type_path(assigns(:special_needs_type))
  end

  test "should show special_needs_type" do
    get :show, :id => @special_needs_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @special_needs_type
    assert_response :success
  end

  test "should update special_needs_type" do
    put :update, :id => @special_needs_type, :special_needs_type => { :type => @special_needs_type.type }
    assert_redirected_to special_needs_type_path(assigns(:special_needs_type))
  end

  test "should destroy special_needs_type" do
    assert_difference('SpecialNeedsType.count', -1) do
      delete :destroy, :id => @special_needs_type
    end

    assert_redirected_to special_needs_types_path
  end
end
