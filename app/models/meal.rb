class Meal < ApplicationRecord
  CATEGORY = ["brasserie", "italien", "pizzas", "indien", "burgers", "kebab", "asiatique",
              "sushis", "coréen", "thaï", "poke", "végétarien", "vegan", "halal", "mexicain"]

  belongs_to :restaurant
  has_many :favorites, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { maximum: 500 }

  validates :price, presence: true
  validates :photo, presence: true
  validates :category, presence: true
end
