class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :amount, precision: 10, scale: 2, null: false
      t.string :payment_method
      t.string :status, default: 'pending'

      t.timestamps
    end
  end
end
