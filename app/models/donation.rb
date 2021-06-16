class Donation < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :name, :quantity, :description, presence: true
    TAGS = ["Alimentos", "Higiene Pessoal", "Carnes", "Produtos de Limpeza", "Outro"]
end
