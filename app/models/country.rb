class Country < ActiveRecord::Base
  has_many :state
  attr_accessible :name, :nationality
  
  def self.search(search, page)
    paginate :per_page => 10, :page => page, :order => 'name'         
  end
  
end
