class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.boolean :status
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
