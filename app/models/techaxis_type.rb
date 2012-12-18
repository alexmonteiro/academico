class TechaxisType < ActiveRecord::Base
  has_many :techaxis
  attr_accessible :techaxis_type, :techaxis
end
