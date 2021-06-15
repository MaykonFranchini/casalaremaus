class MoneyDonation < ApplicationRecord
  def description
    string = "Doação de "
    string += name.present? ? name : "anônimo"
    string += telephone.present? ? " de número #{telephone}" : ""
    string
  end
end
