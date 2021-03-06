class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true
      t.integer :stars

      t.timestamps
    end
  end
end
