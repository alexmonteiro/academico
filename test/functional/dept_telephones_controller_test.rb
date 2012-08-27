require 'test_helper'

class DeptTelephonesControllerTest < ActionController::TestCase
  setup do
    @dept_telephone = dept_telephones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dept_telephones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dept_telephone" do
    assert_difference('DeptTelephone.count') do
      post :create, :dept_telephone => { :area_code => @dept_telephone.area_code, :branch => @dept_telephone.branch, :number => @dept_telephone.number }
    end

    assert_redirected_to dept_telephone_path(assigns(:dept_telephone))
  end

  test "should show dept_telephone" do
    get :show, :id => @dept_telephone
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dept_telephone
    assert_response :success
  end

  test "should update dept_telephone" do
    put :update, :id => @dept_telephone, :dept_telephone => { :area_code => @dept_telephone.area_code, :branch => @dept_telephone.branch, :number => @dept_telephone.number }
    assert_redirected_to dept_telephone_path(assigns(:dept_telephone))
  end

  test "should destroy dept_telephone" do
    assert_difference('DeptTelephone.count', -1) do
      delete :destroy, :id => @dept_telephone
    end

    assert_redirected_to dept_telephones_path
  end
end
