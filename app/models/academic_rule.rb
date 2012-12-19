class AcademicRule < ActiveRecord::Base
  belongs_to :academic_rule_type
  attr_accessible :operator, :value, :academic_rule_type_id
end
