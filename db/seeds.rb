# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'


url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
document = open(url).read
doc = Json.parse(document)
drink = doc["drinks"]

drink.each do |drink|
  ingredient = drink ["strIdregient1"]
  Ingredient.create!(name: ingredient)
end




