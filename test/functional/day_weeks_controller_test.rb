require 'test_helper'

class DayWeeksControllerTest < ActionController::TestCase
  setup do
    @day_week = day_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_week" do
    assert_difference('DayWeek.count') do
      post :create, :day_week => { :description => @day_week.description }
    end

    assert_redirected_to day_week_path(assigns(:day_week))
  end

  test "should show day_week" do
    get :show, :id => @day_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @day_week
    assert_response :success
  end

  test "should update day_week" do
    put :update, :id => @day_week, :day_week => { :description => @day_week.description }
    assert_redirected_to day_week_path(assigns(:day_week))
  end

  test "should destroy day_week" do
    assert_difference('DayWeek.count', -1) do
      delete :destroy, :id => @day_week
    end

    assert_redirected_to day_weeks_path
  end
end
