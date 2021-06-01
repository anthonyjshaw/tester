class Project < ApplicationRecord
  belongs_to :user

  validates :name, :description, :github_url, presence: true
end
