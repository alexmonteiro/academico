require 'test_helper'

class EducationDegreesControllerTest < ActionController::TestCase
  setup do
    @education_degree = education_degrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_degrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_degree" do
    assert_difference('EducationDegree.count') do
      post :create, :education_degree => { :degree => @education_degree.degree }
    end

    assert_redirected_to education_degree_path(assigns(:education_degree))
  end

  test "should show education_degree" do
    get :show, :id => @education_degree
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @education_degree
    assert_response :success
  end

  test "should update education_degree" do
    put :update, :id => @education_degree, :education_degree => { :degree => @education_degree.degree }
    assert_redirected_to education_degree_path(assigns(:education_degree))
  end

  test "should destroy education_degree" do
    assert_difference('EducationDegree.count', -1) do
      delete :destroy, :id => @education_degree
    end

    assert_redirected_to education_degrees_path
  end
end
