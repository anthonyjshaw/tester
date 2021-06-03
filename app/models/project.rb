class Project < ApplicationRecord
  PROJECT_TAGS = %w[Animation Branding Illustration Mobile Print Product-Design Typography Web-Design]
  belongs_to :user
  has_many :tests, dependent: :destroy
  validates :name, :description, :github_url, presence: true
  validates_inclusion_of :project_tag, in: PROJECT_TAGS
end
