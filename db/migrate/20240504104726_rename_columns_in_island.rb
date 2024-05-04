class RenameColumnsInIsland < ActiveRecord::Migration[7.0]
  def change
    rename_column :islands, :lat, :latitude
    rename_column :islands, :long, :longitude
  end
end
