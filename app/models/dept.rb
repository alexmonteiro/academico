class Dept < ActiveRecord::Base
  belongs_to :dept_type
  belongs_to :dept
  has_many :depts
  has_one :dept_address
  attr_accessible :acronym, :cnpj, :description, :email, :finished_at, :name, :site, :started_at, :dept_type_id, :dept_id, :code_number

  #Validacoes
  validates :name, :acronym, :code_number, {:presence => true, :uniqueness => true}
  
  validate :finished_at_date
  
  def dept_type_desc
    self.dept_type.dept_type
  end
  
  def dept_institute
    instituto = self.dept
    while !instituto.blank? do
      instituto = instituto.dept
    end
  end
  
  searchable do
    text :id, :acronym, :cnpj, :description, :email, :name, :site, :dept_type_desc
  end
  
  def finished_at_date
    if finished_at and started_at
     errors.add(:base, "Data de desativação não pode ser menor que a data de ativação") unless finished_at >= started_at
    end
  end

end
