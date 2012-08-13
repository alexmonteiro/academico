require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, :course => { :code => @course.code, :ended_at => @course.ended_at, :goal => @course.goal, :maxtime => @course.maxtime, :mintime => @course.mintime, :name => @course.name, :nickname => @course.nickname, :started_at => @course.started_at }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, :id => @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @course
    assert_response :success
  end

  test "should update course" do
    put :update, :id => @course, :course => { :code => @course.code, :ended_at => @course.ended_at, :goal => @course.goal, :maxtime => @course.maxtime, :mintime => @course.mintime, :name => @course.name, :nickname => @course.nickname, :started_at => @course.started_at }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, :id => @course
    end

    assert_redirected_to courses_path
  end
end
