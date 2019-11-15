require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

user['drinks'].each do |drink|
  Ingredient.create(name: "#{drink['strIngredient1']}")
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# Cocktail.create(name: "Beach")
# Cocktail.create(name: "Fart")
# Cocktail.create(name: "JackyLove")
