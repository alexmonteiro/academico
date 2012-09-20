require 'test_helper'

class CourseMatricesControllerTest < ActionController::TestCase
  setup do
    @course_matrix = course_matrices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_matrices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_matrix" do
    assert_difference('CourseMatrix.count') do
      post :create, :course_matrix => { :ended_at => @course_matrix.ended_at, :maxdisciplines => @course_matrix.maxdisciplines, :maxseasons => @course_matrix.maxseasons, :started_at => @course_matrix.started_at }
    end

    assert_redirected_to course_matrix_path(assigns(:course_matrix))
  end

  test "should show course_matrix" do
    get :show, :id => @course_matrix
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @course_matrix
    assert_response :success
  end

  test "should update course_matrix" do
    put :update, :id => @course_matrix, :course_matrix => { :ended_at => @course_matrix.ended_at, :maxdisciplines => @course_matrix.maxdisciplines, :maxseasons => @course_matrix.maxseasons, :started_at => @course_matrix.started_at }
    assert_redirected_to course_matrix_path(assigns(:course_matrix))
  end

  test "should destroy course_matrix" do
    assert_difference('CourseMatrix.count', -1) do
      delete :destroy, :id => @course_matrix
    end

    assert_redirected_to course_matrices_path
  end
end
