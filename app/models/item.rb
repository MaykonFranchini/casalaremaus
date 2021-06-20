class Item < ApplicationRecord
  belongs_to :donation
  belongs_to :order
  validates :quantity, presence: true
end
