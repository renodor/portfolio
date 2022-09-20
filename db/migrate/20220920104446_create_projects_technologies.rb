class CreateProjectsTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :projects_technologies do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
