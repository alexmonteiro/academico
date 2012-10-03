require 'test_helper'

class ClassRecordsControllerTest < ActionController::TestCase
  setup do
    @class_record = class_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_record" do
    assert_difference('ClassRecord.count') do
      post :create, :class_record => { :justification => @class_record.justification, :note => @class_record.note, :record => @class_record.record, :recorded_at => @class_record.recorded_at }
    end

    assert_redirected_to class_record_path(assigns(:class_record))
  end

  test "should show class_record" do
    get :show, :id => @class_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_record
    assert_response :success
  end

  test "should update class_record" do
    put :update, :id => @class_record, :class_record => { :justification => @class_record.justification, :note => @class_record.note, :record => @class_record.record, :recorded_at => @class_record.recorded_at }
    assert_redirected_to class_record_path(assigns(:class_record))
  end

  test "should destroy class_record" do
    assert_difference('ClassRecord.count', -1) do
      delete :destroy, :id => @class_record
    end

    assert_redirected_to class_records_path
  end
end
