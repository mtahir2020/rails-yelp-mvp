class Review < ApplicationRecord
  # associations and validations go in MODEL
  belongs_to :restaurant

  validates :content, :rating, presence: true

  # A review’s rating must be a number between 0 and 5
  # A review’s rating must be an integer only
  validates :rating, inclusion: 0..5, numericality: {only_integer: true}

end
