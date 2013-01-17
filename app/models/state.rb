class State < ActiveRecord::Base
  belongs_to :country
  has_many   :cities
  attr_accessible :acronym, :name, :country_id
  validates :acronym, :name, :country_id, :presence => true
end
