class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, format: { with: /\A[012345]\z/ }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
  validates :restaurant_id, presence: true
end
