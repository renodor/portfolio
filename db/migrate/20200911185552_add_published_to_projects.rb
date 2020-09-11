class AddPublishedToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :published, :boolean, default: true
  end
end
