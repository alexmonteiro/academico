require 'test_helper'

class SituationTeachingEquipamentsControllerTest < ActionController::TestCase
  setup do
    @situation_teaching_equipament = situation_teaching_equipaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situation_teaching_equipaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situation_teaching_equipament" do
    assert_difference('SituationTeachingEquipament.count') do
      post :create, :situation_teaching_equipament => { :description => @situation_teaching_equipament.description }
    end

    assert_redirected_to situation_teaching_equipament_path(assigns(:situation_teaching_equipament))
  end

  test "should show situation_teaching_equipament" do
    get :show, :id => @situation_teaching_equipament
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @situation_teaching_equipament
    assert_response :success
  end

  test "should update situation_teaching_equipament" do
    put :update, :id => @situation_teaching_equipament, :situation_teaching_equipament => { :description => @situation_teaching_equipament.description }
    assert_redirected_to situation_teaching_equipament_path(assigns(:situation_teaching_equipament))
  end

  test "should destroy situation_teaching_equipament" do
    assert_difference('SituationTeachingEquipament.count', -1) do
      delete :destroy, :id => @situation_teaching_equipament
    end

    assert_redirected_to situation_teaching_equipaments_path
  end
end
