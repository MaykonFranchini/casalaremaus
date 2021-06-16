class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :donations, through: :items
  belongs_to :user, optional: true
  validates :name, :email, :phone, presence: true
end
