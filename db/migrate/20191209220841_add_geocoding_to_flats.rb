class AddGeocodingToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :latitude, :float
    add_column :flats, :longitude, :float
    add_column :flats, :address, :string
  end
end
