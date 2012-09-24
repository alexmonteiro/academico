require 'test_helper'

class ClassStudentStatusesControllerTest < ActionController::TestCase
  setup do
    @class_student_status = class_student_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_student_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_student_status" do
    assert_difference('ClassStudentStatus.count') do
      post :create, :class_student_status => { :description => @class_student_status.description }
    end

    assert_redirected_to class_student_status_path(assigns(:class_student_status))
  end

  test "should show class_student_status" do
    get :show, :id => @class_student_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_student_status
    assert_response :success
  end

  test "should update class_student_status" do
    put :update, :id => @class_student_status, :class_student_status => { :description => @class_student_status.description }
    assert_redirected_to class_student_status_path(assigns(:class_student_status))
  end

  test "should destroy class_student_status" do
    assert_difference('ClassStudentStatus.count', -1) do
      delete :destroy, :id => @class_student_status
    end

    assert_redirected_to class_student_statuses_path
  end
end
