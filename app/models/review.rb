class Review < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, inclusion: { within: 0..5 }
end
