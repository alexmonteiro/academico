require 'test_helper'

class DisciplineClassesControllerTest < ActionController::TestCase
  setup do
    @discipline_class = discipline_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipline_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline_class" do
    assert_difference('DisciplineClass.count') do
      post :create, :discipline_class => { :code => @discipline_class.code, :ending_at => @discipline_class.ending_at, :started_at => @discipline_class.started_at, :timetable_started_at => @discipline_class.timetable_started_at, :vancancies => @discipline_class.vancancies }
    end

    assert_redirected_to discipline_class_path(assigns(:discipline_class))
  end

  test "should show discipline_class" do
    get :show, :id => @discipline_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @discipline_class
    assert_response :success
  end

  test "should update discipline_class" do
    put :update, :id => @discipline_class, :discipline_class => { :code => @discipline_class.code, :ending_at => @discipline_class.ending_at, :started_at => @discipline_class.started_at, :timetable_started_at => @discipline_class.timetable_started_at, :vancancies => @discipline_class.vancancies }
    assert_redirected_to discipline_class_path(assigns(:discipline_class))
  end

  test "should destroy discipline_class" do
    assert_difference('DisciplineClass.count', -1) do
      delete :destroy, :id => @discipline_class
    end

    assert_redirected_to discipline_classes_path
  end
end
