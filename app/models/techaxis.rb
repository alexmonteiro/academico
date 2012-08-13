class Techaxis < ActiveRecord::Base
  belongs_to :techaxis_type
  attr_accessible :techaxis, :techaxis_type
end
