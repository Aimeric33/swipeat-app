class RenameColumnTypeInMeal < ActiveRecord::Migration[7.0]
  def change
    rename_column(:meals, :type, :category)
  end
end
