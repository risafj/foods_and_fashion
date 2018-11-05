# Alternative syntax for an array of strings: %{string string}
%w{Halloween Holiday BeachSanta Warm Formal}.each do |fashion|
    FashionChoice.create(name: fashion)
end

['breakfast', 'Japanese', 'Greek', 'tabasco', 'inedible'].each do |food|
    FoodChoice.create(name: food)
end