class Volunteer < ApplicationRecord
  has_many :solicitations
  validates :name, :email, :phone, :skills, :availability, :experience, presence: true
end
