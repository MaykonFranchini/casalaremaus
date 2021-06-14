class AddDefaultValueToSolicitations < ActiveRecord::Migration[6.0]
  def change
    change_column_default :solicitations, :status, false
  end
end
