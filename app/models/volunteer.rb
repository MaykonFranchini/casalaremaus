class Volunteer < ApplicationRecord
  has_many :solicitations
  MAR_STATUS = ['Solteiro(a)', 'Casado(a)', 'Separado(a)', 'Divorciado(a)', 'Viúvo(a)']

  validates :name, :email, :phone, :skills, :availability, :experience, :cpf_or_cnpj, presence: true
  validates :marital_status, presence: true, inclusion: { in: MAR_STATUS }
  validates :date_of_birth, presence: true, inclusion: { in: Date.today-100.years..Date.today-14.years }
  validates :phone, format: { with: /([(]\d{2}[)]\d{4}\d?-\d{4})/,
    message: "O número está incompleto!" }
  validates :cpf, format: { with: /([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})/,
    message: "O CPF está incompleto!" }, allow_nil: true
  validates :cnpj, format: { with: /([0-9]{2}[.][0-9]{3}[.][0-9]{3}[\/][0-9]{4}[-][0-9]{2})/,
    message: "O CNPJ está incompleto!" }, allow_nil: true
  validates :email, format: { with: /(^[a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.[a-z]+)?$)/,
    message: "O email não é válido!" }

end
