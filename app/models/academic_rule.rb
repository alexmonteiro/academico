class AcademicRule < ActiveRecord::Base
  OPERATOR_TYPES = [">=", ">", "<=", "<", "=="]
  belongs_to :academic_rule_type
  belongs_to :rclass_status_false, :class_name => "RegistrationClassStatus"
  belongs_to :rclass_status_true, :class_name => "RegistrationClassStatus"
  attr_accessible :operator, :value, :academic_rule_type_id, :rclass_status_true_id, :rclass_status_false_id
  validates :operator, :value, :academic_rule_type_id, :rclass_status_true_id, :rclass_status_false_id, :presence => true
end
