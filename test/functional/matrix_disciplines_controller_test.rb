require 'test_helper'

class MatrixDisciplinesControllerTest < ActionController::TestCase
  setup do
    @matrix_discipline = matrix_disciplines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_disciplines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_discipline" do
    assert_difference('MatrixDiscipline.count') do
      post :create, :matrix_discipline => { :isdependence => @matrix_discipline.isdependence, :isoptative => @matrix_discipline.isoptative, :maxseasons => @matrix_discipline.maxseasons }
    end

    assert_redirected_to matrix_discipline_path(assigns(:matrix_discipline))
  end

  test "should show matrix_discipline" do
    get :show, :id => @matrix_discipline
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrix_discipline
    assert_response :success
  end

  test "should update matrix_discipline" do
    put :update, :id => @matrix_discipline, :matrix_discipline => { :isdependence => @matrix_discipline.isdependence, :isoptative => @matrix_discipline.isoptative, :maxseasons => @matrix_discipline.maxseasons }
    assert_redirected_to matrix_discipline_path(assigns(:matrix_discipline))
  end

  test "should destroy matrix_discipline" do
    assert_difference('MatrixDiscipline.count', -1) do
      delete :destroy, :id => @matrix_discipline
    end

    assert_redirected_to matrix_disciplines_path
  end
end
