class AddGithubRepoToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :github_repo, :string
  end
end
