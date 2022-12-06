class Meal < ApplicationRecord
  CATEGORY = ["Brasserie", "Italien", "Pizzas", "Indien", "Burgers", "Kebab", "Asiatique",
              "Sushis", "Coréen", "Thaï", "Poke", "Végétarien", "Vegan", "Halal", "Mexicain"]

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
