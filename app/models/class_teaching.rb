class ClassTeaching < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :person
  belongs_to :dept
  attr_accessible :person_id, :discipline_class_id, :dept_id
end
