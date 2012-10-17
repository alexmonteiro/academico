require 'test_helper'

class DisciplineClassExamsControllerTest < ActionController::TestCase
  setup do
    @discipline_class_exam = discipline_class_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_class_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_class_exam" do
    assert_difference('DisciplineClassExam.count') do
      post :create, :discipline_class_exam => { :applied_at => @discipline_class_exam.applied_at, :is_mandatory => @discipline_class_exam.is_mandatory, :real_value => @discipline_class_exam.real_value, :title => @discipline_class_exam.title, :weight => @discipline_class_exam.weight }
    end

    assert_redirected_to discipline_class_exam_path(assigns(:discipline_class_exam))
  end

  test "should show discipline_class_exam" do
    get :show, :id => @discipline_class_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_class_exam
    assert_response :success
  end

  test "should update discipline_class_exam" do
    put :update, :id => @discipline_class_exam, :discipline_class_exam => { :applied_at => @discipline_class_exam.applied_at, :is_mandatory => @discipline_class_exam.is_mandatory, :real_value => @discipline_class_exam.real_value, :title => @discipline_class_exam.title, :weight => @discipline_class_exam.weight }
    assert_redirected_to discipline_class_exam_path(assigns(:discipline_class_exam))
  end

  test "should destroy discipline_class_exam" do
    assert_difference('DisciplineClassExam.count', -1) do
      delete :destroy, :id => @discipline_class_exam
    end

    assert_redirected_to discipline_class_exams_path
  end
end
