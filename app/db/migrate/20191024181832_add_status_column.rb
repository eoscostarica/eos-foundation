class AddStatusColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :projects, :status, :string, :default => "Candidate"
  end
end
