class AddCpfcnpjToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :cpf_or_cnpj, :string
  end
end
