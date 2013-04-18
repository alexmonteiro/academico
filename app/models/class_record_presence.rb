require 'extend_string'
class ClassRecordPresence < ActiveRecord::Base
  belongs_to :class_record
  belongs_to :registration_class
  attr_accessible :is_present, :registration_class_id, :class_record_id
  
  validates_uniqueness_of :class_record_id, :scope => :registration_class_id, :message => "já possui este aluno associada."
  validates :class_record_id, :registration_class_id, :presence => true
  
  def model_student_name
    self.registration_class.registration.person.try(:name)
  end
  
  def model_student_id
    self.registration_class.registration.person.try(:id)
  end
  
  def model_student_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end
end