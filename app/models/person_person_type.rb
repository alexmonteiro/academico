class PersonPersonType < ActiveRecord::Base
  belongs_to :person
  belongs_to :person_type
  has_many :depts, :through => :person_person_type_depts
  has_many :person_person_type_depts, :dependent => :destroy
  attr_accessible :person_id, :person_type_id, :person_person_type_depts_attributes
  
  accepts_nested_attributes_for :person_person_type_depts
  
  #nome da pessoa
  def person_name
    self.person.try(:name)
  end
  
  #cpf da pessoa
  def cpf
    self.person.try(:cpf)
  end  
  
end
