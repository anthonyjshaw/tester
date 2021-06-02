class Review < ApplicationRecord
  belongs_to :user
  belongs_to :test

  QUESTION_1_CATEGORIES = %w[Great! not\ so\ good... ]

  validates_presence_of :rating, :question1, :question2, :question3
  validates_numericality_of :rating
  validates :question2, inclusion: { in: QUESTION_1_CATEGORIES }

end
