class CreateFlatTags < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_tags do |t|
      t.references :flat, foreign_key: true
      t.string :tag_type

      t.timestamps
    end
  end
end
