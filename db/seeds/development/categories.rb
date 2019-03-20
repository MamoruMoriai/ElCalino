names = ["STEAK & HAMBURG", "RICE & BREAD", "APPETIZER", "TACOS", "TAPAS", "SALAD", "DESSERT", "BEER", "TEQUILA", "WHISKY", "COCKTAIL", "WINE", "SOUR", "SOFT DRINK", "COURSE"]
names.each do |name|
  Category.create!(
    name: name
  )
end
