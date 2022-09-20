class CreateProjectsServices < ActiveRecord::Migration[6.1]
  def change
    create_table :projects_services do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
