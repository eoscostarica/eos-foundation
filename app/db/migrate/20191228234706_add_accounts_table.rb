class AddAccountsTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :accounts do |t|
	    t.string :account
	    t.float :balance
	    t.boolean :is_eligable
	    t.boolean :is_registered
	  	t.timestamps
  	end
  end
end
