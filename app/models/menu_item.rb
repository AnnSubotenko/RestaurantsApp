class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :favorites
  has_many :favorited_by_users, through: :favorites, source: :user
  has_many :reviews

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
