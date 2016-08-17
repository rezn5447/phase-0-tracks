# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # set each item in string of items as a symbol to represent key in hash
  # set default quantity = 0
  # print the list to the console, make method to print
# output: hash with quantity

$grocery_list = {}

def create_list(items_string)
	item_array = items_string.split(" ")
	item_array.each do |item| 
		$grocery_list.store(item,0)
	end
end

items = "bananas cheese bread limes"
p create_list(items)

# Method to add an item to a list
# input: item name as key and optional quantity as value
# steps: 
		# use item name as key
		# set optional quantity as value
		# print item and new quantity 
# output: print that item is printed to the list


def add_item(item, quant=0)
	$grocery_list.store(item, quant)
	p "You added #{item} to your list."
end

add_item("bananas", 8)
add_item("Lemonade", 2)
add_item("Tomatoes", 3)
add_item("Onions", 1)
add_item("Ice Cream", 4)

# Method to remove an item from the list
# input: key or item name 
# steps: 
		# ask user what they want to remove from shopping list
		# key that user inputs use delete method
		# print this item was deleted
# output: print statement of which item crossed off, new hash without deleted item

def remove_item(item)
	$grocery_list.delete(item)
	p "You crossed off #{item} from your list."
end

remove_item("Lemonade")
remove_item("Onions")
p $grocery_list

# Method to update the quantity of an item
# input: key or item name
# steps:
		# ask user for specific item they want to change the quantity for
		# ask user new quantity of item 
		# updating item with new quantity
# output: print statement of updated item and quanitity, 
# new hash with item quantity updated

def update_quant(item, quant)
	$grocery_list.store(item, quant)
	p "You updated #{item} number to #{quant}."
end

update_quant("Ice Cream", 7)
update_quant("limes", 2)
p $grocery_list


# Method to print a list and make it look pretty
# input: hash list of items created
# steps:
		# .each method to iterate through all items and print quantity and item
		# print "You have #{quantity} #{item}."
# output: pretty, updated list

def print_list(list)
	list.each do |item, quant|
		puts "You have #{quant} #{item}."
	end
end

print_list($grocery_list)


# => On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# => What did you learn about pseudocode from working on this challenge?
### Pseudocode is extremely helpful in getting people on the same page and 
### making methods easier


# => What are the tradeoffs of using arrays and hashes for this challenge?
### Arrays are easier with single items and hashes work better when updating and changing  
### values like an interger value of an item


# => What does a method return?
### A method usually returns the value produced by the method. 

# => What kind of things can you pass into methods as arguments?
### Strings, arrays, integers, hashes, even other methods.

# => How can you pass information between methods?
### My personal preference is using a global variable because it is easier to keep track of 
### but another way can be to pass the return value from one method to another 

# What concepts were solidified in this challenge, and what concepts are still confusing?
### Global variables and defining several methods were solidified, but I think I could 
### Work on passing return values between methods and mastering manipulating hashes
### And their values

