class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :favorites
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
  validates :photo, presence: true
end
