class ChangeQuantityInDonations < ActiveRecord::Migration[6.0]
  def change
    change_column :donations, :quantity, :integer, using:'quantity::integer'
  end
end
