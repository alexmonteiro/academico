require 'test_helper'

class WaysOfAdmissionsControllerTest < ActionController::TestCase
  setup do
    @ways_of_admission = ways_of_admissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ways_of_admissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ways_of_admission" do
    assert_difference('WaysOfAdmission.count') do
      post :create, :ways_of_admission => { :description => @ways_of_admission.description }
    end

    assert_redirected_to ways_of_admission_path(assigns(:ways_of_admission))
  end

  test "should show ways_of_admission" do
    get :show, :id => @ways_of_admission
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ways_of_admission
    assert_response :success
  end

  test "should update ways_of_admission" do
    put :update, :id => @ways_of_admission, :ways_of_admission => { :description => @ways_of_admission.description }
    assert_redirected_to ways_of_admission_path(assigns(:ways_of_admission))
  end

  test "should destroy ways_of_admission" do
    assert_difference('WaysOfAdmission.count', -1) do
      delete :destroy, :id => @ways_of_admission
    end

    assert_redirected_to ways_of_admissions_path
  end
end
