class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }

  # private

  # def rating_must_be_between_0_and_5
  #   errors.add(:rating, 'must be between 0 and 5') unless rating&.integer?&.between?(0, 5)
  # end
end
