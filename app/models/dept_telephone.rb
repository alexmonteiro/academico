class DeptTelephone < ActiveRecord::Base
  belongs_to :telephone_type
  belongs_to :dept
  attr_accessible :area_code, :branch, :number, :dept_id, :telephone_type_id
end
