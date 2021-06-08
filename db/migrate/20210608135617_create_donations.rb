class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :quantity
      t.text :description
      t.string :donation_tag
      t.boolean :status

      t.timestamps
    end
  end
end
