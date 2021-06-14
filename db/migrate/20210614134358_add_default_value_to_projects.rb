class AddDefaultValueToProjects < ActiveRecord::Migration[6.0]
  def change
    change_column_default :projects, :status, false
  end
end
