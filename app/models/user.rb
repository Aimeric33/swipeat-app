class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :bookings
  has_one :restaurant, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :meals, through: :bookings

  validates :first_name, :last_name, :address, presence: true
end
