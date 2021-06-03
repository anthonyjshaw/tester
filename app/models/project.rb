class Project < ApplicationRecord
  belongs_to :user
  has_many :tests, dependent: :destroy
  validates :name, :description, :github_url, presence: true
  validates_inclusion_of :project_tag, in: @allowed_types

  @allowed_types => {
    "Animation",
     "Branding",
      "Illustration",
       "Mobile",
        "Print",
         "Product-Design",
          "Typography",
           "Web-Design"
  }

end
