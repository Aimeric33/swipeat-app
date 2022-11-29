class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :like, presence: true
  validates :superlike, presence: true
  validates :eaten, presence: true
end
