require 'test_helper'

class MilitaryDocumentTypesControllerTest < ActionController::TestCase
  setup do
    @military_document_type = military_document_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:military_document_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create military_document_type" do
    assert_difference('MilitaryDocumentType.count') do
      post :create, :military_document_type => { :description => @military_document_type.description }
    end

    assert_redirected_to military_document_type_path(assigns(:military_document_type))
  end

  test "should show military_document_type" do
    get :show, :id => @military_document_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @military_document_type
    assert_response :success
  end

  test "should update military_document_type" do
    put :update, :id => @military_document_type, :military_document_type => { :description => @military_document_type.description }
    assert_redirected_to military_document_type_path(assigns(:military_document_type))
  end

  test "should destroy military_document_type" do
    assert_difference('MilitaryDocumentType.count', -1) do
      delete :destroy, :id => @military_document_type
    end

    assert_redirected_to military_document_types_path
  end
end
