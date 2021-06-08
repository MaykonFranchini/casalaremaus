class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :skills
      t.string :email
      t.string :phone
      t.date :date_of_birth
      t.string :marital_status
      t.string :cpf
      t.string :cnpj
      t.string :availability
      t.string :experience

      t.timestamps
    end
  end
end
