# Create a hash with client's name, age, number of children, decor theme as keys and
# nil as values that will be updated by the user.
#Prompt the user for all the information mentioned above and store it in variables.
#Convert user data to appropriate types.
#Update the values in the hash.
#Print the values on the screen.
#Ask the user if they want to update anything
#If they type none skip.
#If they type a key, convert it to symbol and ask for new value.
#Update the new value, print the updated hash and exit.




client = {
  name: nil,
  age: nil,
  children: nil,
  decor_theme: nil
  
}


puts "What is the name of the client?"
client_name = gets.chomp
client[:name] = client_name.to_s

puts "What is client's age?"
client_age = gets.chomp
client[:age] = client_age.to_i

puts "How many children do you have"
num_children = gets.chomp
client[:children] = num_children.to_i

puts "Do you want decor theme:y/n?"
decor = gets.chomp

if decor == "y"
  client[:decor_theme] = true
elsif decor == "n"
  client[:decor_theme] = false 
end 

puts client

puts "Would you like to update anything? If yes type what do you want to change, otherwise type 'none' to skip!"
answer = gets.chomp

if answer == "none"
 
else
  puts "Type new value"
  new_value = gets.chomp
  client[answer.to_sym] = new_value
  puts client
end






