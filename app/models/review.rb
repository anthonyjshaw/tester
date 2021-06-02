class Review < ApplicationRecord
  belongs_to :user
  belongs_to :test

  validates_presence_of :content, :rating, :question1, :question2, :question3
  validates_numericality_of :rating
end
