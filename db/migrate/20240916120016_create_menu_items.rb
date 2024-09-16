class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :image_url
      t.integer :price, precision: 8, scale: 2
      t.string :description
      t.integer :grams
      t.integer :calories
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
