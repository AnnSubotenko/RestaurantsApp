class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :payment_method
      t.string :status

      t.timestamps
    end
  end
end
