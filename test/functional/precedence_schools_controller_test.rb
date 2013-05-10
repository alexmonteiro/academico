require 'test_helper'

class PrecedenceSchoolsControllerTest < ActionController::TestCase
  setup do
    @precedence_school = precedence_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precedence_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precedence_school" do
    assert_difference('PrecedenceSchool.count') do
      post :create, :precedence_school => { :description => @precedence_school.description }
    end

    assert_redirected_to precedence_school_path(assigns(:precedence_school))
  end

  test "should show precedence_school" do
    get :show, :id => @precedence_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @precedence_school
    assert_response :success
  end

  test "should update precedence_school" do
    put :update, :id => @precedence_school, :precedence_school => { :description => @precedence_school.description }
    assert_redirected_to precedence_school_path(assigns(:precedence_school))
  end

  test "should destroy precedence_school" do
    assert_difference('PrecedenceSchool.count', -1) do
      delete :destroy, :id => @precedence_school
    end

    assert_redirected_to precedence_schools_path
  end
end
