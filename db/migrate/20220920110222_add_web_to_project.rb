class AddWebToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :web, :boolean, default: true
  end
end
