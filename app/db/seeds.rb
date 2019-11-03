# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create([
	{ name: 'Block Producer' },
	{ name: 'Casino' },
	{ name: 'Exchange' },
	{ name: 'Finance' },
	{ name: 'Game' },
	{ name: 'High Risk' },
	{ name: 'Other' },
	{ name: 'Social' }
])

User.new({ :email => 'webmaster@eosio.cr', :password => 'reIgnite2019', :password_confirmation => 'reIgnite2019'}).save
