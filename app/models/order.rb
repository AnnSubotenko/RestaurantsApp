class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :menu_items, through: :order_items
  has_one :payment
  has_many :reviews

  validates :total_price, numericality: { greater_than_or_equal_to: 0 }
  validates :status, inclusion: { in: %w(pending paid completed) }
end
