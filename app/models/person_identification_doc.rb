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

  validates_uniqueness_of :cpf
  validates :cpf, :presence => {:message => "deve ser informado."}
  validates :bc_date_issuance, :presence => { :message => " O campo 'Data de Expedição' da 'Certidão de Nascimento' não foi preenchido!" }, :if => "!birth_certificate.blank?"
  validates :cnh_date_issuance, :presence => { :message => " O campo 'Data de Expedição' da 'Carteira Nacional de Habilitação' não foi preenchido!" }, :if => "!cnh.blank?" || "!cnh_expiration_date.blank?"
  validates :cnh_expiration_date, :presence => { :message => " O campo 'Data de Validade' da 'Carteira Nacional de Habilitação' não foi preenchido!" }, :if => "!cnh.blank?" || "!cnh_date_issuance.blank?"
  validates :rg_date_issuance, :presence => { :message => " O campo 'Data de Expedição' do 'Registro Geral' não foi preenchido!" }, :if => "!rg.blank?"
  validates :vr_date_issuance, :presence => { :message => " O campo 'Data de Expedição' do 'Título de Eleitor' não foi preenchido!" }, :if => "!voter_registration.blank?"
  validate :validate_cpf

  def model_rg_custom
    if !self.rg.blank?
     self.rg + "-" + (self.rg_uf ? self.rg_uf.try(:acronym) : '' )
    else
      'sem identidade'
    end
  end


  def validate_cpf
    return false if cpf.nil?

    nulos = %w{12345678909 11111111111 22222222222 33333333333 44444444444 55555555555 66666666666 77777777777 88888888888 99999999999 00000000000}
    valor = cpf.scan /[0-9]/
    if valor.length == 11
      unless nulos.member?(valor.join)
        valor = valor.collect{|x| x.to_i}
        soma = 10*valor[0]+9*valor[1]+8*valor[2]+7*valor[3]+6*valor[4]+5*valor[5]+4*valor[6]+3*valor[7]+2*valor[8]
        soma = soma - (11 * (soma/11))
        resultado1 = (soma == 0 or soma == 1) ? 0 : 11 - soma
        if resultado1 == valor[9]
          soma = valor[0]*11+valor[1]*10+valor[2]*9+valor[3]*8+valor[4]*7+valor[5]*6+valor[6]*5+valor[7]*4+valor[8]*3+valor[9]*2
          soma = soma - (11 * (soma/11))
          resultado2 = (soma == 0 or soma == 1) ? 0 : 11 - soma
          return true if resultado2 == valor[10] # CPF válido
        end
      end
    end
    errors.add(:cpf, "inválido!") # CPF inválido
  end


  

end

