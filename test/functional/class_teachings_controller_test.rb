require 'test_helper'

class ClassTeachingsControllerTest < ActionController::TestCase
  setup do
    @class_teaching = class_teachings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_teachings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_teaching" do
    assert_difference('ClassTeaching.count') do
      post :create, :class_teaching => {  }
    end

    assert_redirected_to class_teaching_path(assigns(:class_teaching))
  end

  test "should show class_teaching" do
    get :show, :id => @class_teaching
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @class_teaching
    assert_response :success
  end

  test "should update class_teaching" do
    put :update, :id => @class_teaching, :class_teaching => {  }
    assert_redirected_to class_teaching_path(assigns(:class_teaching))
  end

  test "should destroy class_teaching" do
    assert_difference('ClassTeaching.count', -1) do
      delete :destroy, :id => @class_teaching
    end

    assert_redirected_to class_teachings_path
  end
end
