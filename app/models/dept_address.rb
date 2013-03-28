class DeptAddress < ActiveRecord::Base
  belongs_to :street_type
  belongs_to :city
  belongs_to :provenance_area
  belongs_to :dept
  attr_accessible :complement, :neighborhood, :number, :post_office_box, :street_name, :zip_code, :street_type_id, :city_id, :provenance_area_id, :dept_id

  validates_uniqueness_of :dept_id
  validates :zip_code, :presence => { :message => "deve ser informado" }
  
  
  def model_full_address
    "#{self.street_type.try(:description)} #{self.street_name} n. #{self.number} #{self.neighborhood} #{self.city.try(:name)} #{self.city.try(:state).try(:acronym)}"
  end
  
end
