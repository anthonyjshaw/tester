class Project < ApplicationRecord
  belongs_to :user
  has_many :tests, dependent: :destroy
  validates :name, :description, :github_url, presence: true
end
