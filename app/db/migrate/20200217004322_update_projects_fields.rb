class UpdateProjectsFields < ActiveRecord::Migration[5.2]
  def change
  	add_column  :projects, :telegram, :string
  	add_column  :projects, :wechat, :text
  	add_column  :projects, :email, :text
  	add_column  :projects, :public_telegram, :string
  	add_column  :projects, :wallet_login, :boolean, default: false
  end
end
