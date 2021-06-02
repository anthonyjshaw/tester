class Project < ApplicationRecord
  belongs_to :user
  has_many :tests, dependent: :destroy
  validates :name, :description, :github_url, presence: true
  validates :project_tag, inclusion: { in: ["Animation", "Branding", "Illustration", "Mobile", "Print", "Product-Design", "Typography", "Web-Design"] }

end
