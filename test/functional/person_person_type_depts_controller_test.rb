require 'test_helper'

class PersonPersonTypeDeptsControllerTest < ActionController::TestCase
  setup do
    @person_person_type_dept = person_person_type_depts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_person_type_depts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_person_type_dept" do
    assert_difference('PersonPersonTypeDept.count') do
      post :create, :person_person_type_dept => {  }
    end

    assert_redirected_to person_person_type_dept_path(assigns(:person_person_type_dept))
  end

  test "should show person_person_type_dept" do
    get :show, :id => @person_person_type_dept
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @person_person_type_dept
    assert_response :success
  end

  test "should update person_person_type_dept" do
    put :update, :id => @person_person_type_dept, :person_person_type_dept => {  }
    assert_redirected_to person_person_type_dept_path(assigns(:person_person_type_dept))
  end

  test "should destroy person_person_type_dept" do
    assert_difference('PersonPersonTypeDept.count', -1) do
      delete :destroy, :id => @person_person_type_dept
    end

    assert_redirected_to person_person_type_depts_path
  end
end
