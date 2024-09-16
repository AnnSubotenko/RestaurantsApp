class User < ApplicationRecord
  has_many :orders
  has_many :favorites
  has_many :favorite_menu_items, through: :favorites, source: :menu_item
  has_many :reviews

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
