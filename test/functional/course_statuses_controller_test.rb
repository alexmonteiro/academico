require 'test_helper'

class CourseStatusesControllerTest < ActionController::TestCase
  setup do
    @course_status = course_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_status" do
    assert_difference('CourseStatus.count') do
      post :create, :course_status => { :description => @course_status.description }
    end

    assert_redirected_to course_status_path(assigns(:course_status))
  end

  test "should show course_status" do
    get :show, :id => @course_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @course_status
    assert_response :success
  end

  test "should update course_status" do
    put :update, :id => @course_status, :course_status => { :description => @course_status.description }
    assert_redirected_to course_status_path(assigns(:course_status))
  end

  test "should destroy course_status" do
    assert_difference('CourseStatus.count', -1) do
      delete :destroy, :id => @course_status
    end

    assert_redirected_to course_statuses_path
  end
end
