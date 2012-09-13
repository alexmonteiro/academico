require 'test_helper'

class TimetableClassTimesControllerTest < ActionController::TestCase
  setup do
    @timetable_class_time = timetable_class_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timetable_class_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timetable_class_time" do
    assert_difference('TimetableClassTime.count') do
      post :create, :timetable_class_time => {  }
    end

    assert_redirected_to timetable_class_time_path(assigns(:timetable_class_time))
  end

  test "should show timetable_class_time" do
    get :show, :id => @timetable_class_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @timetable_class_time
    assert_response :success
  end

  test "should update timetable_class_time" do
    put :update, :id => @timetable_class_time, :timetable_class_time => {  }
    assert_redirected_to timetable_class_time_path(assigns(:timetable_class_time))
  end

  test "should destroy timetable_class_time" do
    assert_difference('TimetableClassTime.count', -1) do
      delete :destroy, :id => @timetable_class_time
    end

    assert_redirected_to timetable_class_times_path
  end
end
