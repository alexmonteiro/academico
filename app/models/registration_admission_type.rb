class RegistrationAdmissionType < ActiveRecord::Base
  belongs_to :registration
  belongs_to :admission_type
  attr_accessible :registration_id, :admission_type_ids
  
end
