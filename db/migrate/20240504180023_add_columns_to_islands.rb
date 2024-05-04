class AddColumnsToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :cul_diversity, :string
    add_column :islands, :geo_features, :string
    add_column :islands, :access_transport, :string
    add_column :islands, :practical_info, :string
    add_column :islands, :description, :text
    add_column :islands, :title, :string
    add_column :islands, :short_description, :string
  end
end
