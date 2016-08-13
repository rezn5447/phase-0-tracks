

# => In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.


def add_green
	name = "Pete"
	puts ("Add Green to it!")
	yield

end

add_green{ puts "And Orange while you are at it! Hurry!"}




# => In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)

sports_array = ["football","rugby","baseball","golf","surfing","tennis"]



hex_colors = { black: "#000000", white: "#FFFFFF", gray: "666666", red: "#FF0000", yellow: "#FFFF00", blue: "#0000FF" }




# => Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.

p sports_array

sports_array.each do |sport|
puts " I like to play #{sport} !"
end


p sports_array

sports_array.map! do |sport|
sport + " is fun!"
end

p sports_array


p hex_colors


hex_colors.each do |color, hex|
puts "the hex color for #{color} is #{hex}"
end

p hex_colors


#1 A method that iterates through the items, deleting any that meet a certain condition

## ARRAY ##
numbers = [10, 9 , 21, 52, 45, 7, 8]

high_numbers = numbers.delete_if{ |i| i < 20}
p high_numbers

## HASH ##
amounts_stored = { 1 => 1000, 2 => 200, 4 => 300, 9 => 10000, 3 => 90}

amounts_stored.delete_if {|location, amount| location.to_i >= 4 } 
## Because location key evaluates to a string! ##


#2 A method that filters a data structure for only items that do satisfy a certain condition(for example, keeping any numbers that are less than 5)


## ARRAY ##
answers = [true,false,true,false,false,false,true]
p answers

true_answers = answers.keep_if{ |ans| ans == true }
p true_answers


## HASH ##
answers = {a: "c", b: "a" c: "c" d:"b" e:"d"}
p answers

right_answer = 	answers.keep_if{|key,value| value == "c"}
p right_answer

#3	A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!


## ARRAY ##
numbers = [2,4,234,65,7,8,54,2,1,99,7]
p numbers

odds = numbers.select{ |num| num.odd?}
evens = numbers.select{ |num| num.even?}
p odds
p evens

## HASH ##

points = {"rob" => 20, "jane" => 30, "sam" => 19, "peter" => 35}

points.select! {|n,points| points >= 20}

p points



#4 A method that will remove items from a data structure until the conditions in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay)

## ARRAY ##
names_array = ["bob", "jane", "cameron", "robert", "greg"]
p names_array

new_names_array = names_array.drop_while{ |i| i.length < 5}
p new_names_array


## HASH ##









