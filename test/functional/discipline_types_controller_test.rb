require 'test_helper'

class DisciplineTypesControllerTest < ActionController::TestCase
  setup do
    @discipline_type = discipline_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_type" do
    assert_difference('DisciplineType.count') do
      post :create, :discipline_type => { :description => @discipline_type.description }
    end

    assert_redirected_to discipline_type_path(assigns(:discipline_type))
  end

  test "should show discipline_type" do
    get :show, :id => @discipline_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_type
    assert_response :success
  end

  test "should update discipline_type" do
    put :update, :id => @discipline_type, :discipline_type => { :description => @discipline_type.description }
    assert_redirected_to discipline_type_path(assigns(:discipline_type))
  end

  test "should destroy discipline_type" do
    assert_difference('DisciplineType.count', -1) do
      delete :destroy, :id => @discipline_type
    end

    assert_redirected_to discipline_types_path
  end
end
