# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"

puts "Cleaning Database"
Cocktail.delete_all if Rails.env.development?
puts "Database cleaned"

puts "Inserting new drinks"

read_file = URI.open(url).read
cocktails = JSON.parse(read_file)

cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail["name"], glass: cocktail["glass"], preparation: cocktail["preparation"])
end

puts "#{Cocktail.count} in the db"
