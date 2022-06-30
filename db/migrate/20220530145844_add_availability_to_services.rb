class AddAvailabilityToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :avalilability, :boolean
  end
end
