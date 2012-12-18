class ClassTeaching < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :person
  belongs_to :dept
  attr_accessible :person_id, :discipline_class_id, :dept_id
  validates :person_id, :discipline_class_id, :presence => true
  
  def name
    self.person.try(:name)
  end
  
end
