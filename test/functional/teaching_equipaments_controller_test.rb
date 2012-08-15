require 'test_helper'

class TeachingEquipamentsControllerTest < ActionController::TestCase
  setup do
    @teaching_equipament = teaching_equipaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_equipaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_equipament" do
    assert_difference('TeachingEquipament.count') do
      post :create, :teaching_equipament => { :arrival_date => @teaching_equipament.arrival_date, :description => @teaching_equipament.description }
    end

    assert_redirected_to teaching_equipament_path(assigns(:teaching_equipament))
  end

  test "should show teaching_equipament" do
    get :show, :id => @teaching_equipament
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @teaching_equipament
    assert_response :success
  end

  test "should update teaching_equipament" do
    put :update, :id => @teaching_equipament, :teaching_equipament => { :arrival_date => @teaching_equipament.arrival_date, :description => @teaching_equipament.description }
    assert_redirected_to teaching_equipament_path(assigns(:teaching_equipament))
  end

  test "should destroy teaching_equipament" do
    assert_difference('TeachingEquipament.count', -1) do
      delete :destroy, :id => @teaching_equipament
    end

    assert_redirected_to teaching_equipaments_path
  end
end
