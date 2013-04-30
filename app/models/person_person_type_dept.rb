class PersonPersonTypeDept < ActiveRecord::Base
  belongs_to :person_person_type
  belongs_to :dept
  attr_accessible :person_person_type_id, :dept_id
end
