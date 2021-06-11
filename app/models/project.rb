class Project < ApplicationRecord
  has_many :solicitations
  validates :name, :description, presence: true
  validates :description, length: { minimum: 10 }
  has_one_attached :photo
end
