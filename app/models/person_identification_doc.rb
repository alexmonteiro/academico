class PersonIdentificationDoc < ActiveRecord::Base
  belongs_to :person
  belongs_to :military_document_type
  belongs_to :rg_issuing_institution, :class_name => "IssuingInstitution", :foreign_key => "rg_issuing_institution"
  belongs_to :rg_uf, :class_name => "State", :foreign_key => "rg_uf"
  belongs_to :vr_uf, :class_name => "State", :foreign_key => "vr_uf"

  attr_accessible :bc_book, :bc_date_issuance, :bc_notarys_office, :bc_sheet, :birth_certificate, 
                  :cnh, :cnh_date_issuance, :cnh_expiration_date, :cpf, :ctps, :ctps_series, :military_document, 
                  :military_document_region, :pis_pasep, :rg, :rg_date_issuance, :rg_issuing_institution, :rg_uf, 
                  :voter_registration, :vr_date_issuance, :vr_section, :vr_uf, :vr_zone, :military_document_type_id, 
                  :person_id, :rg_issuing_institution_id

  validates :bc_date_issuance, :presence => { :message => " O campo 'Data de Expedição' da 'Certidão de Nascimento' não foi preenchido!" }, :if => "!birth_certificate.blank?"
  validates :cnh_date_issuance, :presence => { :message => " O campo 'Data de Expedição' da 'Carteira Nacional de Habilitação' não foi preenchido!" }, :if => "!cnh.blank?" || "!cnh_expiration_date.blank?"
  validates :cnh_expiration_date, :presence => { :message => " O campo 'Data de Validade' da 'Carteira Nacional de Habilitação' não foi preenchido!" }, :if => "!cnh.blank?" || "!cnh_date_issuance.blank?"
  validates :rg_date_issuance, :presence => { :message => " O campo 'Data de Expedição' do 'Registro Geral' não foi preenchido!" }, :if => "!rg.blank?"
  validates :vr_date_issuance, :presence => { :message => " O campo 'Data de Expedição' do 'Título de Eleitor' não foi preenchido!" }, :if => "!voter_registration.blank?"

def model_rg_custom
  self.rg + "-" + self.rg_uf.try(:acronym)
end

end

