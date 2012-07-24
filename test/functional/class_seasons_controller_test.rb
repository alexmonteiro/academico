require 'test_helper'

class ClassSeasonsControllerTest < ActionController::TestCase
  setup do
    @class_season = class_seasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_seasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_season" do
    assert_difference('ClassSeason.count') do
      post :create, :class_season => { :end_at => @class_season.end_at, :number => @class_season.number, :start_at => @class_season.start_at, :year => @class_season.year }
    end

    assert_redirected_to class_season_path(assigns(:class_season))
  end

  test "should show class_season" do
    get :show, :id => @class_season
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_season
    assert_response :success
  end

  test "should update class_season" do
    put :update, :id => @class_season, :class_season => { :end_at => @class_season.end_at, :number => @class_season.number, :start_at => @class_season.start_at, :year => @class_season.year }
    assert_redirected_to class_season_path(assigns(:class_season))
  end

  test "should destroy class_season" do
    assert_difference('ClassSeason.count', -1) do
      delete :destroy, :id => @class_season
    end

    assert_redirected_to class_seasons_path
  end
end
