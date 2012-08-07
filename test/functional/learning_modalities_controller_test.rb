require 'test_helper'

class LearningModalitiesControllerTest < ActionController::TestCase
  setup do
    @learning_modality = learning_modalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learning_modalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learning_modality" do
    assert_difference('LearningModality.count') do
      post :create, :learning_modality => { :description => @learning_modality.description }
    end

    assert_redirected_to learning_modality_path(assigns(:learning_modality))
  end

  test "should show learning_modality" do
    get :show, :id => @learning_modality
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @learning_modality
    assert_response :success
  end

  test "should update learning_modality" do
    put :update, :id => @learning_modality, :learning_modality => { :description => @learning_modality.description }
    assert_redirected_to learning_modality_path(assigns(:learning_modality))
  end

  test "should destroy learning_modality" do
    assert_difference('LearningModality.count', -1) do
      delete :destroy, :id => @learning_modality
    end

    assert_redirected_to learning_modalities_path
  end
end
