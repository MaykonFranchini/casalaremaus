class Order < ApplicationRecord
  has_many :items
  has_many :donations, through: :items
  validates :name, :email, :phone, presence: true
end
