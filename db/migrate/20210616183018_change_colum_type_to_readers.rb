class ChangeColumTypeToReaders < ActiveRecord::Migration[6.0]
  def change
    change_column :readers, :last_name, :string
  end
end
