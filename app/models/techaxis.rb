class Techaxis < ActiveRecord::Base
  belongs_to :techaxis_type
  attr_accessible :techaxis, :techaxis_type, :techaxis_type_id
end
