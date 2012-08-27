class DeptAddress < ActiveRecord::Base
  belongs_to :street_type
  belongs_to :city
  belongs_to :provenance_area
  belongs_to :dept
  attr_accessible :complement, :neighborhood, :number, :post_office_box, :street_name, :zip_code, :street_type_id, :city_id, :provenance_area_id, :dept_id

  validates_uniqueness_of :dept_id
end
