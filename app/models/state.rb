class State < ActiveRecord::Base
  belongs_to :country
  has_many   :cities
  attr_accessible :acronym, :name, :country_id
  validates :acronym, :name, :country_id, :presence => true
  
  
  searchable do
    integer :id
    text :name, :acronym
    text :country do
      country.name
    end
    text :cities do
      cities.map {|city| city.name}
    end
  end
end
