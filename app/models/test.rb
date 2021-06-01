class Test < ApplicationRecord
  belongs_to :project

  validates_presence_of :name, :description, :test_url, :sample_size, :time_limit
  validates_numericality_of :sample_size
end
