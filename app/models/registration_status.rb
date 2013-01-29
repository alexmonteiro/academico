class RegistrationStatus < ActiveRecord::Base
  attr_accessible :description, :is_attending
  
  def is_attending?
      
    if self.is_attending
      'Sim'
    else
      'Não'
    end
  end
end
