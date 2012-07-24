require 'test_helper'

class DeptTypesControllerTest < ActionController::TestCase
  setup do
    @dept_type = dept_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dept_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dept_type" do
    assert_difference('DeptType.count') do
      post :create, :dept_type => { :dept_type => @dept_type.dept_type }
    end

    assert_redirected_to dept_type_path(assigns(:dept_type))
  end

  test "should show dept_type" do
    get :show, :id => @dept_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dept_type
    assert_response :success
  end

  test "should update dept_type" do
    put :update, :id => @dept_type, :dept_type => { :dept_type => @dept_type.dept_type }
    assert_redirected_to dept_type_path(assigns(:dept_type))
  end

  test "should destroy dept_type" do
    assert_difference('DeptType.count', -1) do
      delete :destroy, :id => @dept_type
    end

    assert_redirected_to dept_types_path
  end
end
