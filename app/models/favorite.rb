class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :like, presence: true
end
