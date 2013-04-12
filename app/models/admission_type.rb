class AdmissionType < ActiveRecord::Base
  attr_accessible :description
  has_many :registration_admission_types
  has_many :registrations, :through => :registration_admission_types
end
