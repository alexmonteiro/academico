require 'test_helper'

class MatrixDisciplinePrerequisitesControllerTest < ActionController::TestCase
  setup do
    @matrix_discipline_prerequisite = matrix_discipline_prerequisites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_discipline_prerequisites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_discipline_prerequisite" do
    assert_difference('MatrixDisciplinePrerequisite.count') do
      post :create, :matrix_discipline_prerequisite => { :pre_matrix_discipline_id => @matrix_discipline_prerequisite.pre_matrix_discipline_id }
    end

    assert_redirected_to matrix_discipline_prerequisite_path(assigns(:matrix_discipline_prerequisite))
  end

  test "should show matrix_discipline_prerequisite" do
    get :show, :id => @matrix_discipline_prerequisite
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrix_discipline_prerequisite
    assert_response :success
  end

  test "should update matrix_discipline_prerequisite" do
    put :update, :id => @matrix_discipline_prerequisite, :matrix_discipline_prerequisite => { :pre_matrix_discipline_id => @matrix_discipline_prerequisite.pre_matrix_discipline_id }
    assert_redirected_to matrix_discipline_prerequisite_path(assigns(:matrix_discipline_prerequisite))
  end

  test "should destroy matrix_discipline_prerequisite" do
    assert_difference('MatrixDisciplinePrerequisite.count', -1) do
      delete :destroy, :id => @matrix_discipline_prerequisite
    end

    assert_redirected_to matrix_discipline_prerequisites_path
  end
end
