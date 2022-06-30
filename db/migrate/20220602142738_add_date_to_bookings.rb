class AddDateToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :start_date, :string
    add_column :bookings, :end_date, :string
  end
end
