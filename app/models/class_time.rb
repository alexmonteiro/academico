class ClassTime < ActiveRecord::Base
  attr_accessible :ended_at, :started_at
  
  validates_uniqueness_of :started_at, :scope => :ended_at, :message => "já possui este horário cadastrado."
end
