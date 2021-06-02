class AddColumnTagToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project_tag, :string
  end
end
