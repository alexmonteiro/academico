require 'test_helper'

class IssuingInstitutionsControllerTest < ActionController::TestCase
  setup do
    @issuing_institution = issuing_institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issuing_institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issuing_institution" do
    assert_difference('IssuingInstitution.count') do
      post :create, :issuing_institution => { :acronym => @issuing_institution.acronym, :description => @issuing_institution.description }
    end

    assert_redirected_to issuing_institution_path(assigns(:issuing_institution))
  end

  test "should show issuing_institution" do
    get :show, :id => @issuing_institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @issuing_institution
    assert_response :success
  end

  test "should update issuing_institution" do
    put :update, :id => @issuing_institution, :issuing_institution => { :acronym => @issuing_institution.acronym, :description => @issuing_institution.description }
    assert_redirected_to issuing_institution_path(assigns(:issuing_institution))
  end

  test "should destroy issuing_institution" do
    assert_difference('IssuingInstitution.count', -1) do
      delete :destroy, :id => @issuing_institution
    end

    assert_redirected_to issuing_institutions_path
  end
end
