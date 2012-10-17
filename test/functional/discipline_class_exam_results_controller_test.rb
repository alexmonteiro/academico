require 'test_helper'

class DisciplineClassExamResultsControllerTest < ActionController::TestCase
  setup do
    @discipline_class_exam_result = discipline_class_exam_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_class_exam_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_class_exam_result" do
    assert_difference('DisciplineClassExamResult.count') do
      post :create, :discipline_class_exam_result => { :concept => @discipline_class_exam_result.concept, :result => @discipline_class_exam_result.result }
    end

    assert_redirected_to discipline_class_exam_result_path(assigns(:discipline_class_exam_result))
  end

  test "should show discipline_class_exam_result" do
    get :show, :id => @discipline_class_exam_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_class_exam_result
    assert_response :success
  end

  test "should update discipline_class_exam_result" do
    put :update, :id => @discipline_class_exam_result, :discipline_class_exam_result => { :concept => @discipline_class_exam_result.concept, :result => @discipline_class_exam_result.result }
    assert_redirected_to discipline_class_exam_result_path(assigns(:discipline_class_exam_result))
  end

  test "should destroy discipline_class_exam_result" do
    assert_difference('DisciplineClassExamResult.count', -1) do
      delete :destroy, :id => @discipline_class_exam_result
    end

    assert_redirected_to discipline_class_exam_results_path
  end
end
