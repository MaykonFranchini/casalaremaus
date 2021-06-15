class Donation < ApplicationRecord
    validates :name, :quantity, :description, presence: true
    TAGS = ["Alimentos", "Higiene Pessoal", "Carnes", "Produtos de Limpeza", "Outro"]
end
