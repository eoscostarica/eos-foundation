class AddProjectsTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :categories do |t|
	    t.string :name
	    t.string :name_zh
	  	t.timestamps
  	end

  	create_table :projects do |t|
	    t.string :name
	    t.string :name_zh
	    t.string :description
	    t.string :description_zh
	    t.text :url
	    t.text :eos_accounts
	    t.references :category
	  	t.timestamps
  	end
  end
end
