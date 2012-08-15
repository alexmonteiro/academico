class TeachingEquipament < ActiveRecord::Base
  belongs_to :equipament_type
  belongs_to :situation_teaching_equipament
  belongs_to :dept
  attr_accessible :arrival_date, :description, :dept_id, :situation_teaching_equipament_id, :equipament_type_id
end
