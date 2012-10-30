require 'test_helper'

class ClassRecordPresencesControllerTest < ActionController::TestCase
  setup do
    @class_record_presence = class_record_presences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_record_presences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_record_presence" do
    assert_difference('ClassRecordPresence.count') do
      post :create, :class_record_presence => { :is_present => @class_record_presence.is_present }
    end

    assert_redirected_to class_record_presence_path(assigns(:class_record_presence))
  end

  test "should show class_record_presence" do
    get :show, :id => @class_record_presence
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_record_presence
    assert_response :success
  end

  test "should update class_record_presence" do
    put :update, :id => @class_record_presence, :class_record_presence => { :is_present => @class_record_presence.is_present }
    assert_redirected_to class_record_presence_path(assigns(:class_record_presence))
  end

  test "should destroy class_record_presence" do
    assert_difference('ClassRecordPresence.count', -1) do
      delete :destroy, :id => @class_record_presence
    end

    assert_redirected_to class_record_presences_path
  end
end
