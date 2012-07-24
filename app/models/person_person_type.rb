class PersonPersonType < ActiveRecord::Base
  belongs_to :person
  belongs_to :person_type
  # attr_accessible :title, :body
end
