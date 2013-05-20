class ClassSeason < ActiveRecord::Base
  belongs_to :class_season_type
  belongs_to :dept
  attr_accessible :end_at, :number, :start_at, :year, :class_season_type_id, :dept_id
  validates :end_at, :number, :start_at, :year, :class_season_type_id,  :dept_id, :presence => true
  
  validate :ended_at_time
  
  validates :number, :year, :numericality => { :only_integer => true }
  validates :year, :numericality => { :less_than => 9999 }

  def model_custom_name
      "#{I18n.l(self.start_at)} a #{I18n.l(self.end_at)} | #{self.class_season_type.try(:description)}"
  end
  
  #validates
  def ended_at_time
       errors.add(:base, "Termino nao pode ser menor que a abertura") unless (self.end_at > self.start_at)
  end
  
end
