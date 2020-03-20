class AddWebDevelopmentToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :web_development, :boolean, default: false
    add_column :projects, :marketing, :boolean, default: false
    add_column :projects, :graphic_design, :boolean, default: false
  end
end
