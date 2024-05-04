class AddFields < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :pets, :integer
    add_column :bookings, :baggages, :integer
    add_column :bookings, :kids, :integer
    add_column :bookings, :adults, :integer

  end
end
