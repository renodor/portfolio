class CreateTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.string :url

      t.timestamps
    end
  end
end
