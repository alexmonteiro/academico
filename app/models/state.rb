class State < ActiveRecord::Base
  belongs_to :country
  has_many   :city
  attr_accessible :acronym, :name, :country
end
