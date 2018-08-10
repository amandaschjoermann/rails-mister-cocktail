require 'json'
require 'open-uri'
require 'pry-byebug'

filepath = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_ingredients = open(filepath).read
ingredients = JSON.parse(serialized_ingredients)["drinks"]


ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


