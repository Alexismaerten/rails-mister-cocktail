# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

 Cocktail.destroy_all
 Ingredient.destroy_all
 Dose.destroy_all
 Review.destroy_all



url= "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
document = open(url).read
doc = JSON.parse(document)

drinks = doc["drinks"]

drinks.each do |drink|
  ingredient = drink["strIngredient1"]
  Ingredient.create!(name: ingredient)
end




