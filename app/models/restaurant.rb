class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :meals, dependent: :destroy

  validates :name, :address, :phone, presence: true, uniqueness: true
  validates :name, length: { minimum: 3 }
end
