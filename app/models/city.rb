class City < ActiveRecord::Base
  default_scope :order => :name 
  belongs_to :state
  attr_accessible :name, :state_id, :state
  validates :name, :state_id, :presence => true
  
  # def self.search(search, page)
    # paginate :per_page => 10, :page => page, :order => 'id'         
  # end
  
  def state_acronym
     "#{self.state.acronym}"
  end
  
  searchable do
    integer :state_id
    integer :id
    text :name
    text :state_acronym
  end
    
end
