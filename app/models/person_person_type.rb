class PersonPersonType < ActiveRecord::Base
  belongs_to :person
  belongs_to :person_type
  attr_accessible :person_id, :person_type_id 
  
  #nome da pessoa
  def person_name
    self.person.name
  end
  
  #cpf da pessoa
  def cpf
    self.person.try(:cpf)
  end  
  
end
