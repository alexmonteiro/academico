class PeopleTelephone < ActiveRecord::Base
  belongs_to :telephone_type
  belongs_to :person
  attr_accessible :area_code, :branch, :number, :people_id, :telephone_type_id
end
