class RegistrationClass < ActiveRecord::Base
  belongs_to :registration
  belongs_to :discipline_class
  belongs_to :registration_class_status
  has_many :class_record_presences
  attr_accessible :registered_at, :discipline_class_id, :registration_class_status_id, :registration_id
  
  def model_student_name
    self.registration.person.try(:name)
  end
  
  def model_student_name_whitout_accents
    self.registration.person.try(:name).removeaccents
  end
end
