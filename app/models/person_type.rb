class PersonType < ActiveRecord::Base
  attr_accessible :description
  has_many :person_person_types
  has_many :people, :through => :person_person_types
end
