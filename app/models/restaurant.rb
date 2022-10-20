class Restaurant < ApplicationRecord
  # associations and validations go in the model
  # category array goes here
  # CAPITALS makes it global and can be used everywhere
  ALLOWED_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  # with has_many, we can call @restaurant.review on show pages etc

  validates :name, :address, :category, presence: true
  validates :category, inclusion: ALLOWED_CATEGORIES

  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
end
