class AddTechnologiesToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :technologies, :text, array: true, default: []
  end
end
