class ChangeColumnNameToReader < ActiveRecord::Migration[6.0]
  def change
    rename_column :readers, :name, :first_name
    add_column :readers, :last_name, :text
  end
end
