class ClassTeaching < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :user
  belongs_to :dept
  attr_accessible :user_id, :discipline_class_id, :dept_id
  validates :user_id, :discipline_class_id, :presence => true
  
  def name
    self.user.try(:displayname)
  end
  
  def schoolclass
    self.discipline_class.school_class
  end
  
end
