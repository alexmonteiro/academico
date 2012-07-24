require 'test_helper'

class ClassSeasonTypesControllerTest < ActionController::TestCase
  setup do
    @class_season_type = class_season_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_season_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_season_type" do
    assert_difference('ClassSeasonType.count') do
      post :create, :class_season_type => { :description => @class_season_type.description }
    end

    assert_redirected_to class_season_type_path(assigns(:class_season_type))
  end

  test "should show class_season_type" do
    get :show, :id => @class_season_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_season_type
    assert_response :success
  end

  test "should update class_season_type" do
    put :update, :id => @class_season_type, :class_season_type => { :description => @class_season_type.description }
    assert_redirected_to class_season_type_path(assigns(:class_season_type))
  end

  test "should destroy class_season_type" do
    assert_difference('ClassSeasonType.count', -1) do
      delete :destroy, :id => @class_season_type
    end

    assert_redirected_to class_season_types_path
  end
end
