class Country < ActiveRecord::Base
  has_many :state
  attr_accessible :name, :nationality
  validates :name, :nationality, :presence => true
  
  def self.search(search, page)
    paginate :per_page => 10, :page => page, :order => 'name'         
  end
  
end
