class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :favorites, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
  validates :photo, presence: true
  validates :type, presence: true
end
