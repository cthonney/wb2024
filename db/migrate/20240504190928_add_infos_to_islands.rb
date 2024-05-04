class AddInfosToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :abbreviation, :string
    add_column :islands, :assembly_point, :string
  end
end
