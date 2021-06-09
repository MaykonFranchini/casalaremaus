class Item < ApplicationRecord
  belongs_to :donation
  belongs_to :order
end
