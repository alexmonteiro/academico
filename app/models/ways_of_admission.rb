class WaysOfAdmission < ActiveRecord::Base
  has_many :registrations
  
  attr_accessible :description
end
