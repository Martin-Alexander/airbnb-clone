class AddMainPhotoToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :main_photo, :string
  end
end
