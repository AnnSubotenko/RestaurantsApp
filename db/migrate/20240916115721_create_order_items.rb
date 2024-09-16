class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity, default: 1
      t.decimal :price, precision: 8, scale: 2
      t.references :order, foreign_key: true
      t.references :menu_item, foreign_key: true

      t.timestamps
    end
  end
end
