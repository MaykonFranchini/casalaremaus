class Donation < ApplicationRecord
    validates :name, :quantity, :description, presence: true
end
