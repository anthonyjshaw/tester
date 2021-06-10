class AddReposUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :repo_url, :string
  end
end
