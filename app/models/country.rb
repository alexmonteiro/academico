class Country < ActiveRecord::Base
  has_many :state
  attr_accessible :name, :nationality
end
