class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name, :state_id
  validates :name, :state_id, :presence => true
  
  # def self.search(search, page)
    # paginate :per_page => 10, :page => page, :order => 'id'         
  # end
    
end
