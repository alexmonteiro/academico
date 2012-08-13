require 'test_helper'

class KnowledgeAreasControllerTest < ActionController::TestCase
  setup do
    @knowledge_area = knowledge_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowledge_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowledge_area" do
    assert_difference('KnowledgeArea.count') do
      post :create, :knowledge_area => { :description => @knowledge_area.description }
    end

    assert_redirected_to knowledge_area_path(assigns(:knowledge_area))
  end

  test "should show knowledge_area" do
    get :show, :id => @knowledge_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @knowledge_area
    assert_response :success
  end

  test "should update knowledge_area" do
    put :update, :id => @knowledge_area, :knowledge_area => { :description => @knowledge_area.description }
    assert_redirected_to knowledge_area_path(assigns(:knowledge_area))
  end

  test "should destroy knowledge_area" do
    assert_difference('KnowledgeArea.count', -1) do
      delete :destroy, :id => @knowledge_area
    end

    assert_redirected_to knowledge_areas_path
  end
end
