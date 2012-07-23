class Gender < ActiveRecord::Base
  attr_accessible :acronym, :gender
  default_scope :order => "id DESC"
end
