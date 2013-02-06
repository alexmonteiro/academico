class PersonAddress < ActiveRecord::Base
  belongs_to :street_type
  belongs_to :city
  belongs_to :state
  belongs_to :country
  belongs_to :provenance_area
  belongs_to :person
  attr_accessible :complement, :neighborhood, :number, :post_office_box, :street_name, :zip_code, :neighborhood, :city_id, :provenance_area_id, :person_id, :street_type_id

  #Validações
  validates_uniqueness_of :person_id
  validates :zip_code, :presence => {:message => "deve ser informado."}
end


def model_full_address
 "#{self.street_name}" + " " +"#{self.neighborhood}" + " " +"#{self.complement}" + " " + ("Cep: "+"#{self.zip_code.to_s}" + " ") + "#{self.city.try(:name)}" + "/" +  "#{self.city.state.try(:acronym)}"
end
