def block_method
  value1 = 10
  value2 = 20
  puts "Before the block."
  yield(value1, value2)
  puts "After the block."
end

block_method{ |value1, value2| puts "This blocks parameters are #{value1} and #{value2}." }



numbers = [1, 2, 3, 4, 5, 6]
squared_numbers = []

puts "Original array:"
p numbers

numbers.each do |number|
  squared_numbers << number**2
end

puts "Result after iteration."
p squared_numbers

puts "Original array:"
p numbers

numbers.map! do |number|
  number + 100
end

puts "Result after mapping"
p numbers


computers_price = {
  "Macintosh" => 1000,
  "Acer" => 900,
  "Dell" => 800,
  "HP" => 700
}
discounted = []

puts "Prices before iteration."
p computers_price

computers_price.each do |brand, price|
  discounted <<  "The price of discounted #{brand} computer is #{price-100} dollars."
end

puts "After .each iteration"
puts discounted

puts "Result before mapping."
p computers_price

refurbished = computers_price.map do |brand, price|
  "The price of refurbished #{brand} computer is #{price-400} dollars."
end

puts "Result after mapping."
puts refurbished


puts "Array methods that take blocks:"

numbers.delete_if do |number|
  number > 105
end

p numbers

num_take = numbers.take_while do |n| 
  n < 104 
end

p num_take

num_select = numbers.select do |n| 
  n.even? 
end

p num_select

num_drop = numbers.drop_while do |n| 
  n < 104
end

p num_drop

num_keep = numbers.keep_if do |n| 
  n < 104
end

p num_keep

puts "Hash methods that take blocks:"

computers_price.delete_if do |brand, price| 
  price > 900
end

p computers_price


select_comp = computers_price.select do |brand, price|
  price > 800
end

p select_comp

rej_comp = computers_price.reject do |brand, price|
  price >= 900
end

p rej_comp



