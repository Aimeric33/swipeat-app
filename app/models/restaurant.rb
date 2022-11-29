class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy

  validates :name, :address, :phone, presence: true, uniqueness: true
  validates :name, length: { minimum: 3 }
end
