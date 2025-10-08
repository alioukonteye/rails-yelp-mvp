class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5].freeze
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING }, numericality: { only_integer: true }

  # private

  # def rating_must_be_between_0_and_5
  #   errors.add(:rating, 'must be between 0 and 5') unless rating&.integer?&.between?(0, 5)
  # end
end
