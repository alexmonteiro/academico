require 'test_helper'

class DisciplineClassExamTypesControllerTest < ActionController::TestCase
  setup do
    @discipline_class_exam_type = discipline_class_exam_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_class_exam_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_class_exam_type" do
    assert_difference('DisciplineClassExamType.count') do
      post :create, :discipline_class_exam_type => { :description => @discipline_class_exam_type.description }
    end

    assert_redirected_to discipline_class_exam_type_path(assigns(:discipline_class_exam_type))
  end

  test "should show discipline_class_exam_type" do
    get :show, :id => @discipline_class_exam_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_class_exam_type
    assert_response :success
  end

  test "should update discipline_class_exam_type" do
    put :update, :id => @discipline_class_exam_type, :discipline_class_exam_type => { :description => @discipline_class_exam_type.description }
    assert_redirected_to discipline_class_exam_type_path(assigns(:discipline_class_exam_type))
  end

  test "should destroy discipline_class_exam_type" do
    assert_difference('DisciplineClassExamType.count', -1) do
      delete :destroy, :id => @discipline_class_exam_type
    end

    assert_redirected_to discipline_class_exam_types_path
  end
end
