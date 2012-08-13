require 'test_helper'

class EducationStepsControllerTest < ActionController::TestCase
  setup do
    @education_step = education_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_step" do
    assert_difference('EducationStep.count') do
      post :create, :education_step => { :description => @education_step.description }
    end

    assert_redirected_to education_step_path(assigns(:education_step))
  end

  test "should show education_step" do
    get :show, :id => @education_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @education_step
    assert_response :success
  end

  test "should update education_step" do
    put :update, :id => @education_step, :education_step => { :description => @education_step.description }
    assert_redirected_to education_step_path(assigns(:education_step))
  end

  test "should destroy education_step" do
    assert_difference('EducationStep.count', -1) do
      delete :destroy, :id => @education_step
    end

    assert_redirected_to education_steps_path
  end
end
