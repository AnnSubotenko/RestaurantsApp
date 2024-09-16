class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :overview
      t.string :image_url
      t.string :address
      t.string :phone_number
      t.string :string

      t.timestamps
    end
  end
end
