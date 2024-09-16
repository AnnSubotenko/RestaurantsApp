class Payment < ApplicationRecord
  belongs_to :order

  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :status, inclusion: { in: %w(pending completed failed) }
end
