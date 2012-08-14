class SchoolClass < ActiveRecord::Base
  belongs_to :matrix
  belongs_to :class_season
  belongs_to :shift_type
  attr_accessible :closing_at, :identifier, :opening_at, :period
end
