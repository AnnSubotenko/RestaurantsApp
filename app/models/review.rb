class Review < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true
  belongs_to :menu_item, optional: true

  validates :rating, presence: true, inclusion: { in: 1..5 }
end
