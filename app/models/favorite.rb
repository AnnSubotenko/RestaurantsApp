class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :menu_item

  validates :user_id, uniqueness: { scope: :menu_item_id }
end
