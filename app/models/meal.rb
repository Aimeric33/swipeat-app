class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :favorites
  has_many :bookings
end
