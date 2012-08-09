class MatrixDiscipline < ActiveRecord::Base
  belongs_to :matrix
  belongs_to :discipline
  belongs_to :matrix_discipline_group
  attr_accessible :isdependence, :isoptative, :maxseasons
end
