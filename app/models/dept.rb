class Dept < ActiveRecord::Base
  belongs_to :dept_type
  belongs_to :dept
  #belongs_to :dept
  attr_accessible :acronym, :cnpj, :description, :email, :finished_at, :name, :site, :started_at, :dept_type_id, :dept_id

  #Validacoes
  validates :name, :acronym, :presence => true

end
