require 'test_helper'

class CourseVacanciesControllerTest < ActionController::TestCase
  setup do
    @course_vacancy = course_vacancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_vacancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_vacancy" do
    assert_difference('CourseVacancy.count') do
      post :create, :course_vacancy => { :number_vacancies => @course_vacancy.number_vacancies }
    end

    assert_redirected_to course_vacancy_path(assigns(:course_vacancy))
  end

  test "should show course_vacancy" do
    get :show, :id => @course_vacancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @course_vacancy
    assert_response :success
  end

  test "should update course_vacancy" do
    put :update, :id => @course_vacancy, :course_vacancy => { :number_vacancies => @course_vacancy.number_vacancies }
    assert_redirected_to course_vacancy_path(assigns(:course_vacancy))
  end

  test "should destroy course_vacancy" do
    assert_difference('CourseVacancy.count', -1) do
      delete :destroy, :id => @course_vacancy
    end

    assert_redirected_to course_vacancies_path
  end
end
