class UpdateProjectsTable < ActiveRecord::Migration[5.2]
  def change
  	change_column :projects, :url, :string
  	change_column :projects, :description, :text
  	change_column :projects, :description_zh, :text
  	change_column :projects, :eos_accounts, :string
  end
end
