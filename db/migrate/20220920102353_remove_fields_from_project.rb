class RemoveFieldsFromProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :web_development, :boolean, default: false
    remove_column :projects, :marketing, :boolean, default: false
    remove_column :projects, :graphic_design, :boolean, default: false
  end
end
