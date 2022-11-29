class AddPhoneToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :phone, :string
  end
end
