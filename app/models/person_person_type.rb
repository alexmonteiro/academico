class PersonPersonType < ActiveRecord::Base
  belongs_to :person
  belongs_to :person_type
  attr_accessible :person_id, :person_type_id 
end
