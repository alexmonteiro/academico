require 'test_helper'

class TelephoneTypesControllerTest < ActionController::TestCase
  setup do
    @telephone_type = telephone_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telephone_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telephone_type" do
    assert_difference('TelephoneType.count') do
      post :create, :telephone_type => { :telephone_type => @telephone_type.telephone_type }
    end

    assert_redirected_to telephone_type_path(assigns(:telephone_type))
  end

  test "should show telephone_type" do
    get :show, :id => @telephone_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @telephone_type
    assert_response :success
  end

  test "should update telephone_type" do
    put :update, :id => @telephone_type, :telephone_type => { :telephone_type => @telephone_type.telephone_type }
    assert_redirected_to telephone_type_path(assigns(:telephone_type))
  end

  test "should destroy telephone_type" do
    assert_difference('TelephoneType.count', -1) do
      delete :destroy, :id => @telephone_type
    end

    assert_redirected_to telephone_types_path
  end
end
