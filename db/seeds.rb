# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# category_names = ["Italian", "Japanese","Steakhouse","Fusion", "French", "Indian", "Mexican", "Korean"]
# category_names.each do |name|
# Category.create!(:type => name)
# end

restaurant_opts = [
	{:name => "Union" ,		:categories => ["French", "Steakhouse"]}, 
	{:name => "Swan" ,		:categories => ["Fusion", "French"]},
	{:name => "Gu"	,		:categories => ["Japanese"]},
	{:name => "Sidecar",	:categories=> ["Italian","Fusion"]},
	{:name => "Ole"	,		:categories => ["Mexican"]},
	{:name => "Kimchi",		:categories=> ["Korean", "Japanese"]},
	{:name => "Namaste",	:categories=> ["Indian"]} 
	]
	restaurant_opts.each do |opts|
	# r=restaurant.create! :name => opts[:name]
	restaurant = Restaurant.create! opts.slice(:name) # => {:name => "Union"}
	opts[:categories].each do |name|
		category = Category.where(:name => name).first_or_create
		restaurant.categories << category
	end
end

puts "hello"