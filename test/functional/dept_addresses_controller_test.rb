require 'test_helper'

class DeptAddressesControllerTest < ActionController::TestCase
  setup do
    @dept_address = dept_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dept_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dept_address" do
    assert_difference('DeptAddress.count') do
      post :create, :dept_address => { :complement => @dept_address.complement, :neighborhood => @dept_address.neighborhood, :number => @dept_address.number, :post_office_box => @dept_address.post_office_box, :street_name => @dept_address.street_name, :zip_code => @dept_address.zip_code }
    end

    assert_redirected_to dept_address_path(assigns(:dept_address))
  end

  test "should show dept_address" do
    get :show, :id => @dept_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dept_address
    assert_response :success
  end

  test "should update dept_address" do
    put :update, :id => @dept_address, :dept_address => { :complement => @dept_address.complement, :neighborhood => @dept_address.neighborhood, :number => @dept_address.number, :post_office_box => @dept_address.post_office_box, :street_name => @dept_address.street_name, :zip_code => @dept_address.zip_code }
    assert_redirected_to dept_address_path(assigns(:dept_address))
  end

  test "should destroy dept_address" do
    assert_difference('DeptAddress.count', -1) do
      delete :destroy, :id => @dept_address
    end

    assert_redirected_to dept_addresses_path
  end
end
