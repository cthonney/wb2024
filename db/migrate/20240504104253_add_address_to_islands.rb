class AddAddressToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :address, :string
  end
end
