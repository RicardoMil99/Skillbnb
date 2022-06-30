class AddPricePerHourToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :price_per_hour, :integer
  end
end
