class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :date, presence: true
  validates :number_people, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
