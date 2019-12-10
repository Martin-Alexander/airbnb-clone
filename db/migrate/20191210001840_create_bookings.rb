class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true
      t.text :message
      t.date :from_date
      t.date :to_date
      t.string :status

      t.timestamps
    end
  end
end
