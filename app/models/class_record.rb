class ClassRecord < ActiveRecord::Base
  belongs_to :discipline_class
  belongs_to :person #professor
  belongs_to :class_time
  belongs_to :class_record_type
  has_many   :class_record_presences
  attr_accessible :justification, :note, :record, :recorded_at,
                  :person_id, :class_record_type_id, :class_time_id, :discipline_class_id
                  
  validates :person_id, :recorded_at, :class_record_type_id, :class_time_id, :record, :presence => true             

  def model_custom_name
    I18n.localize(self.recorded_at) + " " + (self.class_time.try(:model_custom_name) ? self.class_time.try(:model_custom_name) : '<sem horário>') + " " + self.discipline_class.try(:model_custom_name)
  end
  
end
