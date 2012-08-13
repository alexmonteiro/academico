require 'test_helper'

class ProvenanceAreasControllerTest < ActionController::TestCase
  setup do
    @provenance_area = provenance_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provenance_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provenance_area" do
    assert_difference('ProvenanceArea.count') do
      post :create, :provenance_area => { :description => @provenance_area.description }
    end

    assert_redirected_to provenance_area_path(assigns(:provenance_area))
  end

  test "should show provenance_area" do
    get :show, :id => @provenance_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @provenance_area
    assert_response :success
  end

  test "should update provenance_area" do
    put :update, :id => @provenance_area, :provenance_area => { :description => @provenance_area.description }
    assert_redirected_to provenance_area_path(assigns(:provenance_area))
  end

  test "should destroy provenance_area" do
    assert_difference('ProvenanceArea.count', -1) do
      delete :destroy, :id => @provenance_area
    end

    assert_redirected_to provenance_areas_path
  end
end
