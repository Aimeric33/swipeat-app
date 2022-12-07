class AddPositionToMeal < ActiveRecord::Migration[7.0]
  def change
    add_column :meals, :position, :integer
  end
end
