# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash
  # separate string into an array of individual items
  # make each one a key for a hash with a default quantity
# output: A hash of the items with default quantities

def make_list(item_string)
  grocery_list = {}
  items_array = item_string.split(" ")
  items_array.each do |shopping_item|
    grocery_list[shopping_item] = 1
  end
  return grocery_list  
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:add to the item and quantity to hash
# output:the grocery list

def add_item(grocery_list, item_name, quantity = 1)
  grocery_list[item_name] = quantity
  grocery_list
end

# Method to remove an item from the list
# input:grocery list, item
# steps:delete item
# output:grocery list

def delete_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

# Method to update the quantity of an item
# input:grocery list, item, quantity
# steps:update item or quantity
# output:grocery list

def update_items(grocery_list, item, quantity)
  grocery_list[item] = quantity 
  grocery_list
end

# Method to print a list and make it look pretty
# input:grocery list
# steps: iterate through the list
# output: print a better looking list

def print_items(grocery_list)
  grocery_list.each do |item ,quantity|
    p "#{item}: #{quantity}" 
  end
end

#Driver code

grocery_list = make_list("carrots apples cereal pizza")
grocery_list = add_item(grocery_list, "Lemonade", 2)
grocery_list = add_item(grocery_list, "Tomatoes", 3)
grocery_list = add_item(grocery_list, "Onions", 3)
grocery_list = add_item(grocery_list, "Ice Cream", 4)
grocery_list = delete_item(grocery_list, "Lemonade")
grocery_list = update_items(grocery_list,"Ice Cream", 1)
print_items(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
It helps to create all the steps necesary for the program to run the way we want it to.
What are the tradeoffs of using arrays and hashes for this challenge?
It is better to use hash key value pairs.
What does a method return?
It returns the last value evaluated unless the value is explicitly returned earlier.
What kind of things can you pass into methods as arguments?
Arrays, hashes, integers, strings.
How can you pass information between methods?
Save the information in a data structure and pass it as an argument.
What concepts were solidified in this challenge, and what concepts are still confusing?
Using blocks inside other methods. All curent concepts are clear.
=end
