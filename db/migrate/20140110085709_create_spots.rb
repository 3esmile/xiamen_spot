class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :image
      t.string :address
      t.text :url
      t.string :pinyin
      t.string :description
      t.string :open_time
      t.integer :price
      t.integer :rate
      t.string :tags

      t.timestamps
    end
  end
end
