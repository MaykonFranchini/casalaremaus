class CreateMoneyDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :money_donations do |t|
      t.float :amount
      t.string :email
      t.string :name
      t.string :telephone

      t.timestamps
    end
  end
end
