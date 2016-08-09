# In phase-0-tracks/ruby/arrays_drill.rb, 
# demonstrate that you can do the following steps, in order. 
# You'll need to use the Array docs to figure out how to accomplish each one, just as you used the String docs to manipulate strings.



# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
drill_array = []


# Add five items to your array. Print the array.
drill_array << "basketball"
drill_array << "baseball"
drill_array << "wiffle ball"
drill_array << "football"
drill_array << "soccer ball"

	p drill_array

# Delete the item at index 2. Print the array.
drill_array.delete_at(2)

	p drill_array


# Remove the first item of the array without having to refer to its index. Print the array.

drill_array.shift

	p drill_array


# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

drill_array.include?("racecar")

	p "It is #{drill_array.include?("racecar")} that drill_array includes racecar"





# Initialize another array that already has a few items in it.

array2 = ["bobcat", "jackal","hyena"]


# Add the two arrays together and store them in a new variable. Print the new array.

huge_array = drill_array + array2

	p huge_array




