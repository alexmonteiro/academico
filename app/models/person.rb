require 'extend_string'
class Person < ActiveRecord::Base
  belongs_to :gender
  belongs_to :education_degree
  belongs_to :race
  belongs_to :marital_status
  belongs_to :blood_type
  belongs_to :country
  belongs_to :state
  belongs_to :city
  has_many :person_person_types, :dependent => :destroy
  has_many :person_types, :through => :person_person_types
  has_many :people_telephones, :dependent => :destroy
  has_one :person_address, :dependent => :destroy
  has_one :person_identification_doc, :dependent => :destroy
  has_many :registrations
  default_scope :order => :name 
  before_destroy :has_children?

  attr_accessible :birth_date, :email, :father_name, :lattes_url, :mom_name, :name, :number_children,
                  :city_id, :country_id, :state_id, :race_id, :education_degree_id, :marital_status_id, :blood_type_id, :gender_id,
                  :people_telephones_attributes, :person_address_attributes, :person_identification_doc_attributes, :person_person_types_attributes, :person_person_type_depts_attributes,
                  :person_person_types

  #Campos para aceitar atributos aninhados
  accepts_nested_attributes_for :people_telephones, :reject_if => lambda { |a| a[:number].blank?}, :allow_destroy => true
  accepts_nested_attributes_for :person_address
  accepts_nested_attributes_for :person_identification_doc
  accepts_nested_attributes_for :person_person_types
    
  #Validações
  validates :name, :birth_date, :mom_name, :gender_id, :education_degree_id, :presence => {:message => "deve ser informado."}
  validates :city_id, :state_id, :race_id, :presence => {:message => "deve ser informado."}
  validates :number_children, :numericality => { :only_integer => true }
  #validates :email, :uniqueness => true
  
  def model_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end
  
  #CPF
  def cpf
    self.person_identification_doc.try(:cpf)
  end
  
  #RG
  def rg
    self.person_identification_doc.try(:model_rg_custom)
  end

  searchable do
    text :id, :birth_date, :email, :name, :number_children, :cpf, :rg
    string :name    
  end  
  
  #Metodo para salvar os Person_Person_Type_Depts
  def create_depts_by_person_types(params)
    person_types_hash = params[:person_type_depts_attributes] #=> Depts
    person_types_checkeds = params[:person_types_checkeds] #=> Check_box checkeds
    if !person_types_checkeds.blank?
      person_types_checkeds.each do |ptc|
        if ptc != "1"
          person_person_type_dept = self.person_person_types.build(:person_type_id => ptc)
          person_person_type_dept.save!
          if !person_types_hash[ptc].blank?
            !person_types_hash[ptc].each do |pt|
              person_person_type_dept.person_person_type_depts.build(:dept_id => pt).save! if !pt.blank?
            end
          end
        else
          person_person_type_dept = self.person_person_types.build(:person_type_id => ptc)
          person_person_type_dept.save!
        end
      end
    end
    
  end
  
  def validates_depts_by_person_types(params)
    person_types_hash = params[:person_type_depts_attributes] #=> Depts
    person_types_checkeds = params[:person_types_checkeds] #=> Check_box checkeds
    
    if person_types_checkeds.blank?
      errors.add(:base, "Cadastro precisa ter algum Vínculo Institucional")
      return false
    else
      validator = true
      person_types_checkeds.each do |ptc|
        if ptc != "1"
          if person_types_hash[ptc].blank?
            errors.add(:base, "O Vinculo Institucional '#{PersonType.find(ptc).description}' tem que estar ligado a um Instituto")
            validator = false
            break
          end
        end
      end
      validator
    end  
  end
  
  
  private
  def has_children?
    errors.add(:base, "Existem matrículas associadas a esta pessoa") unless registrations.count == 0
   
    if errors.size > 0
     false
    else
     true
    end    
  end

end
