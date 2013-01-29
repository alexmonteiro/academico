class RegistrationClassStatus < ActiveRecord::Base
  attr_accessible :description, :is_approved
  
  def is_approved?
    if self.is_approved
      'Sim'
    else
      'Não'
    end
  end
end
