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
# output:

def print_items(grocery_list)
  grocery_list.each do |item ,quantity|
    p "#{item}: #{quantity}" 
  end
end

#Driver code

grocery_list = make_list("carrots apples cereal pizza")
grocery_list = add_item(grocery_list, "pear")
rocery_list = delete_item(grocery_list, "apples")
grocery_list = update_items(grocery_list,"tomatoes",9)
print_items(grocery_list)