require 'test_helper'

class EducationModalitiesControllerTest < ActionController::TestCase
  setup do
    @education_modality = education_modalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_modalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_modality" do
    assert_difference('EducationModality.count') do
      post :create, :education_modality => { :description => @education_modality.description }
    end

    assert_redirected_to education_modality_path(assigns(:education_modality))
  end

  test "should show education_modality" do
    get :show, :id => @education_modality
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @education_modality
    assert_response :success
  end

  test "should update education_modality" do
    put :update, :id => @education_modality, :education_modality => { :description => @education_modality.description }
    assert_redirected_to education_modality_path(assigns(:education_modality))
  end

  test "should destroy education_modality" do
    assert_difference('EducationModality.count', -1) do
      delete :destroy, :id => @education_modality
    end

    assert_redirected_to education_modalities_path
  end
end
