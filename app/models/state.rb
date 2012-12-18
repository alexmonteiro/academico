class State < ActiveRecord::Base
  belongs_to :country
  has_many   :cities
  attr_accessible :acronym, :name, :country_id, :city_id
end
