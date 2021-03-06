class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :description
      t.references :user, foreign_key: true
      t.string :long_description

      t.timestamps
    end
  end
end
