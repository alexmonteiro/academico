class PersonIdentificationDoc < ActiveRecord::Base
  belongs_to :person
  belongs_to :military_document_type
  belongs_to :rg_issuing_institution, :class_name => "IssuingInstitution", :foreign_key => "rg_issuing_institution"
  belongs_to :rg_uf, :class_name => "State", :foreign_key => "rg_uf"
  belongs_to :vr_uf, :class_name => "State", :foreign_key => "vr_uf"
  attr_accessible :bc_book, :bc_date_issuance, :bc_notarys_office, :bc_sheet, :birth_certificate, :cnh, :cnh_date_issuance, :cnh_expiration_date, :cpf, :ctps, :ctps_series, :military_document, :military_document_region, :pis_pasep, :rg, :rg_date_issuance, :rg_issuing_institution, :rg_uf, :voter_registration, :vr_date_issuance, :vr_section, :vr_uf, :vr_zone, :military_document_type_id, :person_id
end


def model_rg_custom
  self.rg + "-" + self.rg_uf.try(:acronym)
end