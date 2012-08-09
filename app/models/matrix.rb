class Matrix < ActiveRecord::Base
  belongs_to :course
  belongs_to :matrix_evaluation_type
  belongs_to :matrix_status
  belongs_to :class_season_type
  attr_accessible :ended_at, :maxdisciplines, :maxseasons, :started_at
end
