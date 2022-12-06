class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (0..5)
  belongs_to :meal
  belongs_to :user

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, inclusion: { in: AUTHORIZED_RATINGS }
end
