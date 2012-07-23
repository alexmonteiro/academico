class BloodType < ActiveRecord::Base
  attr_accessible :type
  self.inheritance_column = "inheritance_type"
end
