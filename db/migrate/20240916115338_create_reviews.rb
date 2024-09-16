class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :comment
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true, optional: true
      t.references :menu_item, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
