class ChangeDateTypeInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :date, :datetime
  end
end
