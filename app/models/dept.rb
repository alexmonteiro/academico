class Dept < ActiveRecord::Base
  belongs_to :dept_type
  belongs_to :dept
  has_many :depts
  has_one :dept_address
  attr_accessible :acronym, :cnpj, :description, :email, :finished_at, :name, :site, :started_at, :dept_type_id, :dept_id

  #Validacoes
  validates :name, :acronym, :presence => true
  
  def dept_type_desc
    self.dept_type.dept_type
  end
  
  searchable do
    text :acronym, :cnpj, :description, :email, :name, :site, :dept_type_desc
        
  end

end
