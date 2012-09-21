require 'test_helper'

class PersonIdentificationDocsControllerTest < ActionController::TestCase
  setup do
    @person_identification_doc = person_identification_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_identification_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_identification_doc" do
    assert_difference('PersonIdentificationDoc.count') do
      post :create, :person_identification_doc => { :bc_book => @person_identification_doc.bc_book, :bc_date_issuance => @person_identification_doc.bc_date_issuance, :bc_notarys_office => @person_identification_doc.bc_notarys_office, :bc_sheet => @person_identification_doc.bc_sheet, :birth_certificate => @person_identification_doc.birth_certificate, :cnh => @person_identification_doc.cnh, :cnh_date_issuance => @person_identification_doc.cnh_date_issuance, :cnh_expiration_date => @person_identification_doc.cnh_expiration_date, :cpf => @person_identification_doc.cpf, :ctps => @person_identification_doc.ctps, :ctps_series => @person_identification_doc.ctps_series, :military_document => @person_identification_doc.military_document, :military_document_region => @person_identification_doc.military_document_region, :pis_pasep => @person_identification_doc.pis_pasep, :rg => @person_identification_doc.rg, :rg_date_issuance => @person_identification_doc.rg_date_issuance, :rg_issuing_institution => @person_identification_doc.rg_issuing_institution, :rg_uf => @person_identification_doc.rg_uf, :voter_registration => @person_identification_doc.voter_registration, :vr_date_issuance => @person_identification_doc.vr_date_issuance, :vr_section => @person_identification_doc.vr_section, :vr_uf => @person_identification_doc.vr_uf, :vr_zone => @person_identification_doc.vr_zone }
    end

    assert_redirected_to person_identification_doc_path(assigns(:person_identification_doc))
  end

  test "should show person_identification_doc" do
    get :show, :id => @person_identification_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @person_identification_doc
    assert_response :success
  end

  test "should update person_identification_doc" do
    put :update, :id => @person_identification_doc, :person_identification_doc => { :bc_book => @person_identification_doc.bc_book, :bc_date_issuance => @person_identification_doc.bc_date_issuance, :bc_notarys_office => @person_identification_doc.bc_notarys_office, :bc_sheet => @person_identification_doc.bc_sheet, :birth_certificate => @person_identification_doc.birth_certificate, :cnh => @person_identification_doc.cnh, :cnh_date_issuance => @person_identification_doc.cnh_date_issuance, :cnh_expiration_date => @person_identification_doc.cnh_expiration_date, :cpf => @person_identification_doc.cpf, :ctps => @person_identification_doc.ctps, :ctps_series => @person_identification_doc.ctps_series, :military_document => @person_identification_doc.military_document, :military_document_region => @person_identification_doc.military_document_region, :pis_pasep => @person_identification_doc.pis_pasep, :rg => @person_identification_doc.rg, :rg_date_issuance => @person_identification_doc.rg_date_issuance, :rg_issuing_institution => @person_identification_doc.rg_issuing_institution, :rg_uf => @person_identification_doc.rg_uf, :voter_registration => @person_identification_doc.voter_registration, :vr_date_issuance => @person_identification_doc.vr_date_issuance, :vr_section => @person_identification_doc.vr_section, :vr_uf => @person_identification_doc.vr_uf, :vr_zone => @person_identification_doc.vr_zone }
    assert_redirected_to person_identification_doc_path(assigns(:person_identification_doc))
  end

  test "should destroy person_identification_doc" do
    assert_difference('PersonIdentificationDoc.count', -1) do
      delete :destroy, :id => @person_identification_doc
    end

    assert_redirected_to person_identification_docs_path
  end
end
