class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :meal_id, uniqueness: { scope: :user_id }
end
