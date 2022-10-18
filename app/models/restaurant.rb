class Restaurant < ApplicationRecord
  # associations and validations go in the model
  # category array goes here
  @allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: @allowed_categories

  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
end
