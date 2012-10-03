require 'test_helper'

class ClassRecordTypesControllerTest < ActionController::TestCase
  setup do
    @class_record_type = class_record_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_record_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_record_type" do
    assert_difference('ClassRecordType.count') do
      post :create, :class_record_type => { :description => @class_record_type.description }
    end

    assert_redirected_to class_record_type_path(assigns(:class_record_type))
  end

  test "should show class_record_type" do
    get :show, :id => @class_record_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_record_type
    assert_response :success
  end

  test "should update class_record_type" do
    put :update, :id => @class_record_type, :class_record_type => { :description => @class_record_type.description }
    assert_redirected_to class_record_type_path(assigns(:class_record_type))
  end

  test "should destroy class_record_type" do
    assert_difference('ClassRecordType.count', -1) do
      delete :destroy, :id => @class_record_type
    end

    assert_redirected_to class_record_types_path
  end
end
