require 'test_helper'

class MatrixDisciplineGroupsControllerTest < ActionController::TestCase
  setup do
    @matrix_discipline_group = matrix_discipline_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_discipline_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_discipline_group" do
    assert_difference('MatrixDisciplineGroup.count') do
      post :create, :matrix_discipline_group => { :description => @matrix_discipline_group.description }
    end

    assert_redirected_to matrix_discipline_group_path(assigns(:matrix_discipline_group))
  end

  test "should show matrix_discipline_group" do
    get :show, :id => @matrix_discipline_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @matrix_discipline_group
    assert_response :success
  end

  test "should update matrix_discipline_group" do
    put :update, :id => @matrix_discipline_group, :matrix_discipline_group => { :description => @matrix_discipline_group.description }
    assert_redirected_to matrix_discipline_group_path(assigns(:matrix_discipline_group))
  end

  test "should destroy matrix_discipline_group" do
    assert_difference('MatrixDisciplineGroup.count', -1) do
      delete :destroy, :id => @matrix_discipline_group
    end

    assert_redirected_to matrix_discipline_groups_path
  end
end
