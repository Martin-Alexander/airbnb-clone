class AddProfilePictureAndFullNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :full_name, :string
  end
end
