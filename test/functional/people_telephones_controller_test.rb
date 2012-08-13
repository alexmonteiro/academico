require 'test_helper'

class PeopleTelephonesControllerTest < ActionController::TestCase
  setup do
    @people_telephone = people_telephones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_telephones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_telephone" do
    assert_difference('PeopleTelephone.count') do
      post :create, :people_telephone => { :area_code => @people_telephone.area_code, :branch => @people_telephone.branch, :number => @people_telephone.number }
    end

    assert_redirected_to people_telephone_path(assigns(:people_telephone))
  end

  test "should show people_telephone" do
    get :show, :id => @people_telephone
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @people_telephone
    assert_response :success
  end

  test "should update people_telephone" do
    put :update, :id => @people_telephone, :people_telephone => { :area_code => @people_telephone.area_code, :branch => @people_telephone.branch, :number => @people_telephone.number }
    assert_redirected_to people_telephone_path(assigns(:people_telephone))
  end

  test "should destroy people_telephone" do
    assert_difference('PeopleTelephone.count', -1) do
      delete :destroy, :id => @people_telephone
    end

    assert_redirected_to people_telephones_path
  end
end
