class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name, :state_id
  
  def self.search(search, page)
    paginate :per_page => 10, :page => page, :order => 'name'         
  end
    
end
